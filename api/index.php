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
use \projet\controller\ControllerMembre;
use \projet\controller\ControllerStream;
use \projet\controller\ControllerMessage;
$container = new \Slim\Container(array_merge($config_slim, $errors));
$app = new \Slim\App($container);

/*$app->get('/test[/]',function(Request $req, Response $res, array $args) : Response
{
    $res->getBody()->write("<h1>Salut</h1>");
    return $res;
});*/
// ****************************** ROUTES DE TEST ******************************
$app->get('/test[/]',ControllerMembre::class.':test');
$app->get("/home[/]", ControllerStream::class.':home');
////////////////////////////////////////////////////////////////////////////////////

// MEMBRE
$app->get("/member/{id}", ControllerMembre::class.':getMember');

$app->post("/member", ControllerMember::class.':createMember');

// VIDEOS

/*$app->get("/video", function (Request $rq, Response $resp): Response {
});

$app->get("/subs", function (Request $rq, Response $resp): Response {
});

$app->get("/msg", function (Request $rq, Response $resp): Response {
});*/

//MESSAGE
$app->get("/msg", ControllerMessage::class.':getMessages');
//$app->post('/msg', ControllerMessage::class.':sendMessage');
$app->delete('/msg', ControllerMessage::class.':deleteMessage');
$app->run();
