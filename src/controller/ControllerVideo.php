<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
class ControllerVideo
{
    protected $c;

    public function __construct(\Slim\Container $c = null)
    {
        $this->c = $c;
    }

    public function getVideos(Request $req, Response $res): Response
    {

    }

    public function getVideo(Request $req, Response $res, array $args): Response
    {
            
    }

    public function sendVideo(Request $req, Response $res): Response
    {

    }

    public function modifVideo(Request $req, Response $res): Response
    {

    }

    public function deleteVideo(Request $req, Response $res, array $args): Response
    {

    }
}