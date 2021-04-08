<?php
require_once  __DIR__ . '/../src/vendor/autoload.php';
/* ACCES DB */

$config_ini = parse_ini_file("../src/conf/conf.ini");

$config_slim = require_once('conf/Settings.php'); /* Récupération de la config de Slim */
$errors = require_once('conf/Errors.php'); /* Récupération des erreurs */
/* INSTANCE DE CONNEXION  */
$db = new Illuminate\Database\Capsule\Manager();

$db->addConnection($config_ini); /* configuration avec nos paramètres */
$db->setAsGlobal();              /* rendre la connexion visible dans tout le projet */
$db->bootEloquent();             /* établir la connexion */
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\controller\ControllerUser;
use \projet\controller\ControllerStream;
use \projet\controller\ControllerMessage;
use \projet\controller\ControllerVideo;
use \projet\middlewares\CheckAuthorization;
use \projet\middlewares\CheckToken;
function cors() {
    // Allow from any origin
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
        header("Access-Control-Allow-Headers: Origin, Authorization, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }

    // Access-Control headers are received during OPTIONS requests
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            // may also be using PUT, PATCH, HEAD etc
            header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers: Origin, Authorization, X-Requested-With, Content-Type, Accept");

        exit(0);
    }
}
cors();


$container = new \Slim\Container(array_merge($config_slim, $errors));
$app = new \Slim\App($container);
/*$app->get('/test[/]',function(Request $req, Response $res, array $args) : Response
{
    $res->getBody()->write("<h1>Salut</h1>");
    return $res;
});*/
// ****************************** ROUTES *****************************************
$app->get("/home[/]", ControllerStream::class.':home');
//////////////////////////////////////////////////////////////////////////////////

// MEMBRE
$app->get("/user/{id}[/]", ControllerUser::class.':getUserProfile');

$app->get("/user/{id}/videos[/]", ControllerUser::class.':getUserVideos')
    ->add(CheckAuthorization::class.':checkAuthorization')
    ->add(CheckToken::class.':checkToken');
$app->put("/user/{id}[/]", ControllerUser::class.':modifProfile')
    ->add(CheckAuthorization::class.':checkAuthorization')
    ->add(CheckToken::class.':checkToken');
$app->post("/user", ControllerUser::class.':createUser');

$app->delete("/user", ControllerUser::class.':deleteUser')
    ->add(CheckAuthorization::class.':checkAuthorization')
    ->add(CheckToken::class.':checkToken');
$app->post("/signIn", ControllerUser::class.':signIn')
    ->add(CheckAuthorization::class.':checkAuthorization');

// STREAM
$app->get('/alert[/]', ControllerStream::class.':voirStreamProche');

$app->get("/stream/{id}[/]", ControllerStream::class.':getStream');

$app->post('/stream[/]', ControllerStream::class.':createStream');

$app->delete('/stream/{id}[/]', ControllerStream::class.':deleteStream');
// VIDEOS

$app->post('/video[/]', ControllerVideo::class.':sendVideo');
$app->get('/video/{id}[/]', ControllerVideo::class.':getVideo');
/*
$app->get("/subs", function (Request $rq, Response $resp): Response {
});

$app->get("/msg", function (Request $rq, Response $resp): Response {
});*/

//MESSAGE
$app->get("/msg", ControllerMessage::class.':getMessages');

$app->post('/msg', ControllerMessage::class.':sendMessage')
    ->add(CheckAuthorization::class.':checkAuthorization')
    ->add(CheckToken::class.':checkToken');

$app->delete('/msg', ControllerMessage::class.':deleteMessage')
    ->add(CheckAuthorization::class.':checkAuthorization')
    ->add(CheckToken::class.':checkToken');
$app->options('/{routes:.+}', function ($request, $response, $args) {
    return $response;
});
$app->run();