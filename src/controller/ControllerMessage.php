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
        try
        {
            $message->save();
        }
        catch(\Exception $e)
        {
            $res = $res->withStatus(500)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($e->getmessage()));
            return $res;
        }
        $res = $res->withStatus(201)                     
                    ->withHeader('Content-Type','application/json');
        $res->getBody()->write(json_encode("Message Envoyé"));
        return $res;
    }

    public function deleteMessage(Request $req, Response $res, array $args): Response
    {
        $message = Message::where('id','=',$id)->first();
        try
        {
            $message->delete();
        }
        catch(\Exception $e)
        {
            $res = $res->withStatus(500)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($e->getmessage()));
            return $res;
        }
        $res = $res->withStatus(200)                     
                    ->withHeader('Content-Type','application/json');
        $res->getBody()->write(json_encode("Message supprimé"));
        return $res;
    }
}