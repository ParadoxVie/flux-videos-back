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
        $uploadedFile = $req->getUploadedFiles();
        $file = $uploadedFile['data']->file;
        rename($file,'..\videos\\'.bin2hex(random_bytes(8)).'.mpeg');
        $res = $res->withStatus(200)
                ->withHeader('Content-Type','application/json');
        $res->getBody()->write(json_encode($uploadedFile));
        return $res;
        $video = new Video;
        $video->name = $body->idStream.'video';
        $video->description = '';
        $video->status = $body->status;
        $video->path = '/video'.$video->name.'.mpg';
        $video->view = 0;
        $video->id_user = 1;
        try
        {
            $video->save();
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