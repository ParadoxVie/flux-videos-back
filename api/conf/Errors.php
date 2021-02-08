<?php

use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;

return [
    'notFoundHandler' => function (\Slim\Container $c) {
        return function (Request $rq, Response $rs) use ($c): Response {

            $uri = $rq->getUri();

            $rs = $rs->withStatus(400)
                ->withHeader('Content-Type', 'application/json');

            $rs->getBody()->write(json_encode(
                [
                    'type' => 'error',
                    'error' => 400,
                    'message' => "$uri : malformed uri - request not recognised"
                ]
            ));

            return $rs;
        };
    },

    'notAllowedHandler' => function (\Slim\Container $c) {
        return function (Request $rq, Response $rs, array $methods): Response {

            $method = $rq->getMethod();
            $uri = $rq->getUri();

            $rs = $rs->withStatus(405)
                ->withHeader('Content-Type', 'application/json')
                ->withHeader('Allow', implode(', ', $methods));

            $rs->getBody()->write(json_encode([
                'type' => 'error',
                'error' => 405,
                'message' => "method $method not allowed for uri $uri - (should be " . implode(', ', $methods) . ")"
            ]));

            return $rs;
        };
    },

    'phpErrorHandler' => function (\Slim\Container $c) {
        return function (Request $rq, Response $rs, \Throwable $error): Response {

            $rs = $rs->withStatus(500)
                ->withHeader('Content-Type', 'application/json');

            $rs->getBody()->write(json_encode([
                'type' => 'error',
                'error' => 500,
                'message' => "internal server error: {$error->getMessage()}",
                'trace' => $error->getTraceAsString(),
                'file' => $error->getFile() . "line: " . $error->getLine()
            ]));

            return $rs;
        };
    }
];
