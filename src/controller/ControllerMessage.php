<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\Message;
class ControllerMessage
{
    protected $c;

    public function __construct(\Slim\Container $c = null)
    {
        $this->c = $c;
    }

    public function getMessages(Request $req, Response $res, array $args): Response
    {

        $res->getBody()->write("<h1>Salut</h1>");
        return $res;
    }

    public function sendMessage(Request $req, Response $res, array $args): Response
    {
        $msg = json_decode($req->getBody());
        $message = new Message();
    }

    public function deleteMessage(Request $req, Response $res, array $args): Response
    {
        $message = Message::where('id','=',$id)->first();
    }
}