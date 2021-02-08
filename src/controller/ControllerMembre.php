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

    
    public function test(Request $req, Response $res,array $args): Response
    {
        
        $res->getBody()->write("<h1>Salut</h1>");
        return $res;
    }

    public function getMember(Request $req, Response $res,array $args): Response
    {
        $id = $args['id'];
        $member = User::select()->where('id','=',$id)->first();
        $res->getBody()->write($member);
        return $res;
    }

    public function createMember(Request $req, Response $res,array $args): Response
    {

    }

    public function modifProfil(Request $req, Response $res,array $args): Response
    {

    }

    public function getMemberVideos(Request $req, Response $res,array $args): Response
    {

    }

    public function deleteMember(Request $req, Response $res,array $args): Response
    {

    }

    public function signIn(Request $req, Response $res,array $args): Response
    {

    }
}