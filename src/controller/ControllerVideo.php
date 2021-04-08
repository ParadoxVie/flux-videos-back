<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Slim\http\Stream;
use \projet\model\Video;
use \projet\model\Stream as streaming;
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
        try
        {
            $video = Video::where('name','=',$args['id'])->firstOrFail();
        }
        catch(ModelNotFoundException $e)
        {
            $res = $res->withStatus(404)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode(["error" => "Video Not Found"]));
            return $res;
        }
        $file = fopen($video->path,'r');
        $file_stream = new Stream($file);
        $res = $res->withStatus(200)
                    ->withHeader('Content-Type', 'video/mpeg')
                    ->withHeader('Content-length', filesize($file))
                    ->withBody($file_stream);
        return $res;
    }

    public function sendVideo(Request $req, Response $res): Response
    {
        $body = $req->getParsedBody();
        $uploadedFile = $req->getUploadedFiles();
        $stream = streaming::select('id','id_user')->where('id','=',$body['id_stream'])->withTrashed()->first();
        $file = $uploadedFile['data']->file;
        $uuidVideo = $stream->id;
        rename($file,'..\videos\\'.$uuidVideo.'.webm');
        $video = new Video;
        $video->name = $uuidVideo;
        $video->description = '';
        if($body['status']=="true")
            $video->status = true;
        else
            $video->status = false;
        $video->path = '../videos/'.$uuidVideo.'.webm';
        $video->view = 0;
        //ajouter where pour id_user
        $video->id_user = $stream->id_user;
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
            $video->delete();
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