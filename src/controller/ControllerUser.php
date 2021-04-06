<?php

namespace projet\controller;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\User;
use \Firebase\JWT\JWT;
use Firebase\JWT\ExpiredException;
use Firebase\JWT\SignatureInvalidException;
use Firebase\JWT\BeforeValidException;
use \Illuminate\Database\Eloquent\ModelNotFoundException;
class ControllerUser
{
    protected $c;

    public function __construct(\Slim\Container $c)
    {
        $this->c = $c;
    }

    public function getUserProfile(Request $req, Response $res,array $args): Response
    {
        $id = $args['id'];
        $user = User::select('username','description','image')->where('id','=',$id)->first();
        if(!is_null($user))
        {
            $res = $res->withStatus(200)                     
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write($user);
            return $res;
        } else {
            $res = $res->withStatus(404)
                ->withHeader('Content-Type', 'application/json');
            $res->getBody()->write(json_encode("User Not Found"));
            return $res;
        }
    }

    public function createUser(Request $req, Response $res, array $args): Response
    {
        $user = new User();
        $body = json_decode($req->getBody());
        $user->name =  filter_var($body->name,FILTER_SANITIZE_SPECIAL_CHARS);
        $user->firstname = filter_var($body->firstname,FILTER_SANITIZE_SPECIAL_CHARS);
        $user->mail = filter_var($body->mail,FILTER_VALIDATE_EMAIL);
        $user->username = filter_var($body->username,FILTER_SANITIZE_SPECIAL_CHARS);
        $user->password = password_hash($body->password,PASSWORD_DEFAULT);
        $user->description = '';
        $user->image = '';
        try {
            $user->save();
        }
        catch(ModelNotFoundException $e)
        {
            $res = $res->withStatus(500)
                ->withHeader('Content-Type', 'application/json');
            $res->getBody()->write(json_encode($e->getmessage()));
            return $res;
        }
        $res = $res->withStatus(201)
            ->withHeader('Content-Type', 'application/json');
        $res->getBody()->write("Account has been created");
        return $res;
    }

    public function modifProfile(Request $req, Response $res, array $args): Response
    {
    }

    public function getMemberVideos(Request $req, Response $res, array $args): Response
    {
    }

    public function deleteMember(Request $req, Response $res, array $args): Response
    {
        $id = $args["id"];
        $user = User::where('id', '=', $id)->first();
        try {
            $user->delete();
        } catch (\Exception $e) {
            $res = $res->withStatus(500)
                ->withHeader('Content-Type', 'application/json');
            $res->getBody()->write(json_encode($e->getmessage()));
            return $res;
        }
        $res = $res->withStatus(200)
            ->withHeader('Content-Type', 'application/json');
        $res->getBody()->write(json_encode("User deleted"));
        return $res;
    }

    public function signIn(Request $req, Response $res, array $args): Response
    {
        $authString = base64_decode(explode(" ",$req->getHeader('Authorization')[0])[1]);
        list($user,$pass) = explode(':',$authString);
        try
        {
            $user = User::select('mail','username','password')->where('username','=',$user)->firstorFail();

            if(!password_verify($pass, $user->password))
            {
                $res = $res->withStatus(401)
                            ->withHeader('Content-Type','application/json');
                $res->getBody()->write(json_encode("Password Check Failed"));
                return $res;
            }

        }
        catch(ModelNotFoundException $e)
        {
            $res = $res->withStatus(404)
                ->withHeader('Content-Type', 'application/json');
            $res->getBody()->write(json_encode($e->getmessage()));
            return $res;
        }

        $token = JWT::encode([
            'iss' => 'http://localhost:8080/api/signIn',
            'aud' => 'http://localhost:8080',
            'iat' => time(),
            'exp' => time()+60*60*24,
            'username' => $user->username,
            'email' => $user->mail
        ],
        $this->c->settings['secrets'], 'HS512');

        $res = $res->withStatus(200)
                    ->withHeader('Content-Type','application/json');
        $res->getBody()->write(json_encode($token));
        return $res;
    }
}
