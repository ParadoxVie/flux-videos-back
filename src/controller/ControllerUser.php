<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\User;
class ControllerMembre
{
    protected $c;

    public function __construct(\Slim\Container $c = null)
    {
        $this->c = $c;
    }

    public function getUser(Request $req, Response $res,array $args): Response
    {
        $id = $args['id'];
        $user = User::select()->where('id','=',$id)->first();
        $res->getBody()->write($user);
        return $res;
    }

    public function createUser(Request $req, Response $res,array $args): Response
    {
        $user = new User();
        $body = json_decode($req->getBody());
        $user['name'] = $body['name'];
        $user['firstname'] = $body['firstname'];
        $user['email'] = $body['email'];
        $user['username'] = $body['username'];
        $user['password'] = password_hash($body['password'],PASSWORD_DEFAULT);
        $user['description'] = $body['description'];
        $user['image'] = $body['image'];
        try
        {
            $user->save();
        }
        catch(Exception $e)
        {
            
        }
    }

    public function modifProfile(Request $req, Response $res,array $args): Response
    {

    }

    public function getMemberVideos(Request $req, Response $res,array $args): Response
    {

    }

    public function deleteMember(Request $req, Response $res,array $args): Response
    {
        $user = User::where('id','=',$id)->first();
        $user->delete();
    }

    public function signIn(Request $req, Response $res,array $args): Response
    {

    }
}