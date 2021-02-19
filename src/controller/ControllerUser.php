<?php

namespace projet\controller;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\User;

class ControllerUser
{
    protected $c;

    public function __construct(\Slim\Container $c = null)
    {
        $this->c = $c;
    }

    public function getUser(Request $req, Response $res, array $args): Response
    {
        $id = $args['id'];
        $user = User::select()->where('id', '=', $id)->first();
        if (!is_null($user)) {
            $res = $res->withStatus(200)
                ->withHeader('Content-Type', 'application/json');
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
        $user->name = $body->name;
        $user->firstname = $body->firstname;
        $user->mail = $body->mail;
        $user->username = $body->username;
        $user->password = password_hash($body->password, PASSWORD_DEFAULT);
        $user->description = '';
        $user->image = '';
        try {
            $user->save();
        } catch (\Exception $e) {
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
    }
}
