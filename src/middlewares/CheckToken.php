<?php
namespace projet\middlewares;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \Firebase\JWT\JWT;
use \Firebase\JWT\ExpiredException;
use \Firebase\JWT\SignatureInvalidException;
use \Firebase\JWT\BeforeValidException;
class CheckToken
{
    private $c;

    public function __construct(\Slim\Container $c)
    {
        $this->c = $c;
    }

    public function checkToken(Request $req, Response $res, callable $next): Response
    {
        try
        {
            $secrets = $this->c['settings']['secrets'];
            $h = $req->getHeader('Authorization')[0];
            $tokenstring= sscanf($h, "Bearer %s")[0];
            $token = JWT::decode($tokenstring, $secrets, ['HS512']);
        }
        catch(ExpiredException $e)
        {
            $res = $res->withStatus(401)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($e));
            return $res;
        }
        catch(SignatureInvalidException $e)
        {
            $res = $res->withStatus(401)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($e));
            return $res;
        }
        catch (BeforeValidException $e)
        {
            $res = $res->withStatus(401)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($e));
            return $res;
        }
        catch(\UnexpectedValueException $e)
        {
            $res = $res->withStatus(401)
                        ->withHeader('Content-Type','application/json');
            $res->getBody()->write(json_encode($e));
            return $res;
        }
        //Passage du token au controller
        $req = $req->withAttribute('token', $token);
        $response = $next($req,$res);

        return $response;
    }
}