<?php
namespace projet\middlewares;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
class CheckAuthorization
{
    private $c;

    public function __construct(\Slim\Container $c)
    {
        $this->c = $c;
    }

    public function checkAuthorization(Request $req, Response $res, callable $next): Response
    {
        if(!$req->hasHeader('Authorization'))
        {
            $res = $res->withStatus(401)
                        ->withHeader('Content-Type','application/json')
                        ->withHeader('WWW-Authenticate','Basic');
            $res->getBody()->write(json_encode(array(
                'type' => 'error',
                'error' => 401,
                'message' => 'no authorization header present'
            )));
            return $res;
        }

        $response = $next($req,$res);

        return $response;
    }
}