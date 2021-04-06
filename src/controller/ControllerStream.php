<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\Stream;
use \projet\model\Video;
use \Ramsey\Uuid\Uuid;
class ControllerStream
{
    protected $c;

    public function __construct(\Slim\Container $c)
    {
        $this->c = $c;
    }

    public function home(Request $req, Response $res): Response
    {
        $streams = Stream::select()->take(4)->where('visibility','=',0)->orderBy('created_at')->get();
        $videos = Video::select()->take(4)->orderBy('created_at')->get();
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
        if(!is_null($stream))
        {
            $res = $res->withStatus(200)                     
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($stream));
            return $res;
        }
        else
        {
            $res = $res->withStatus(404)                     
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode("Stream not Found"));
            return $res;
        }
    }

    public function createStream(Request $req, Response $res, array $args): Response
    {
        //POST
        //Proxy
        /*$opts = array('http' => array('proxy'=> 'tcp://www-cache.iutnc.univ-lorraine.fr:3128', 'request_fulluri'=> true));
        $context = stream_context_create($opts)*/
        $uuid1 = Uuid::uuid1();
        $str = json_decode(file_get_contents("http://ip-api.com/json"));
        $stream = new Stream();
        $infos = json_decode($req->getBody());//Recuperation des infos
        $stream->id = $uuid1;
        $stream->title = filter_var($infos->title,FILTER_SANITIZE_SPECIAL_CHARS);
        $stream->visibility = $infos->visibility;
        $stream->anonymous = $infos->anonymous;
        $stream->urgency = $infos->urgency;
        $stream->latitude = $str->lat;
        $stream->longitude = $str->lon;
        $stream->id_user = 1;

        try
        {
            $stream->save();
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
        $res->getBody()->write(json_encode(
            [
                'id' => $stream->id,
                'title' => $stream->title,
                "visibilty" => $stream->visibilty,
                "id_user" => $stream->user_id,
                "latitude" => $stream->latitude,
                "longitude" => $stream->longitude,
                "anonymous" => $stream->anonymous,
                "urgency" => $stream->urgency
            ]
        ));
        return $res;
    }

    public function deleteStream(Request $req, Response $res, array $args): Response
    {
        $id = $args['id'];
        try
        {
            $stream = Stream::where('id','=',$id)->firstorFail();
        }
        catch(\Exception $e)
        {
            $res = $res->withStatus(404)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode("Stream Not Found"));
            return $res;
        }

        try
        {
            $stream->delete();
        }
        catch(\Exception $e)
        {
            $res = $res->withStatus(500)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($id));
            return $res;
        }
        $res = $res->withStatus(200)                     
                    ->withHeader('Content-Type','application/json');
        $res->getBody()->write("This stream has been deleted");
        return $res;
    }

    public function voirStreamProche(Request $req, Response $res, array $args): Response
    {
        $lat = $req->getQueryParam('lat',null);
        $lon = $req->getQueryParam('lon',null);
        $streams = Stream::where('latitude','<>',$lat)->where('longitude','<>',$lon)->take(4)->get();
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
            $res->getBody()->write(json_encode("Streams not found"));
            return $res;
        }
    }
}