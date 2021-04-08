<?php
namespace projet\controller;
use\Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\model\Stream;
use \projet\model\Video;
use \projet\model\User;
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
        $streams = Stream::select()->take(30)->where('visibility','=',0)->with('creator')->orderBy('created_at')->get();
        $videos = Video::select()->take(30)->orderBy('created_at')->get();
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
        $stream = Stream::select()->where('id','=',$id)->with(['creator'=> function($q){
            $q->select('id','username','mail','description');
        }])->first();
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
            $res->getBody()->write(json_encode(["error" => "Stream not Found"]));
            return $res;
        }
    }

    public function createStream(Request $req, Response $res, array $args): Response
    {
        $uuid1 = Uuid::uuid1();
        $stream = new Stream();
        $infos = json_decode($req->getBody());//Recuperation des infos
        $stream->id = $uuid1;
        $stream->title = filter_var($infos->title,FILTER_SANITIZE_STRING,FILTER_FLAG_NO_ENCODE_QUOTES);
        $stream->visibility = $infos->visibility;
        $stream->anonymous = $infos->anonymous;
        $stream->urgency = $infos->urgency;
        $stream->latitude = $infos->latitude;
        $stream->longitude = $infos->longitude;
        //122
        if(is_null($infos->username))
            $stream->id_user = 116;
        else
        {
            try
            {
                $stream->id_user = User::where('username','=',$infos->username)->firstOrFail()->id;
            }
            catch(ModelNotFoundException $e)
            {
                $res = $res->withStatus(404)
                            ->withHeader('Content-Type','application/json');
                $res->getBody()->write(json_encode(["error" => "User Not Found"]));
                return $res;
            }
            
        }
            
        //Save du Stream
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
                "visibility" => $stream->visibility,
                "id_user" => $stream->id_user,
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
            $res->getBody()->write(json_encode(["error" => "Stream Not Found"]));
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