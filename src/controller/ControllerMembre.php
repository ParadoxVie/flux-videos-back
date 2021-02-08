<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
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
}