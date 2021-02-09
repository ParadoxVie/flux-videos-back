<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\Stream;
use \projet\model\Video;
class ControllerStream
{
    protected $c;

    public function __construct(\Slim\Container $c = null)
    {
        $this->c = $c;
    }

    public function home(Request $req, Response $res): Response
    {
        $streams = Stream::select()->take(4)->get();
        $videos = Video::select()->take(4)->get();
        $result = array(
            'streams' => $streams,
            'videos' => $videos,
        );
        if(!is_null($streams))
        {
            $res = $res->withStatus(200)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($result));
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
        $id = $args['id'];
        $stream = Stream::select()->where('id','=',$id)->first();
        $res = $res->withStatus(200)                     
                    ->withHeader('Content-Type','application/json');
        $res->getBody()->write($stream);
        return $res;
    }

    public function createStream(Request $req, Response $res, array $args): Response
    {
        //POST
        $stream = new Stream();
        $infos = json_decode($req->getBody());//Recuperation des infos
    }
}