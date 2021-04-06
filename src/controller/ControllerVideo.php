<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\Video;
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
        $body = $req->getParsedBody();
        $video = new Video;
        $video->name = 
        $res = $res->withStatus(201)
                    ->withHeader('Content-Type','application/json');
        $res->getBody()->write(json_encode(["success" => "Video has been saved"]));
        return $res;
    }

    public function modifVideo(Request $req, Response $res): Response
    {

    }

    public function deleteVideo(Request $req, Response $res, array $args): Response
    {
        $video = Video::where('id','=',$id)->first();
        try
        {
            $user->delete();
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
        $res->getBody()->write(json_encode("Video deleted"));
        return $res;
    }
}