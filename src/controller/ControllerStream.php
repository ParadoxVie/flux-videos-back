<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\Stream;
class ControllerStream
{
    protected $c;

    public function __construct(\Slim\Container $c = null)
    {
        $this->c = $c;
    }

    public function home(Request $req, Response $res): Response
    {
        $streams = Stream::all();
        if(!is_null($streams))
        {
            $res = $res->withStatus(200)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($streams));
            return $res;
        }
        else
        {
            $res = $res->withStatus(404)                     
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write('<h1>Streams not found</h1>');
            return $res;
        }
    }

    public function getStream(Request $req, Response $res,array $args): Response
    {
        //Developpement ici de WebRTC
    }
}