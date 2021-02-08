<?php
require_once  __DIR__ . '/../src/vendor/autoload.php';
/* ACCES DB */

$config_ini = parse_ini_file("../src/conf/conf.ini");

/* INSTANCE DE CONNEXION  */
$db = new Illuminate\Database\Capsule\Manager();

$db->addConnection($config_ini); /* configuration avec nos paramètres */
$db->setAsGlobal();              /* rendre la connexion visible dans tout le projet */
$db->bootEloquent();             /* établir la connexion */
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \projet\controller\ControllerMembre;
$configuration = [
    'settings' => [
        'displayErrorDetails' => true,
    ],
];
$c = new \Slim\Container($configuration);
$app = new \Slim\App($c);

/*$app->get('/test[/]',function(Request $req, Response $res, array $args) : Response
{
    $res->getBody()->write("<h1>Salut</h1>");
    return $res;
});*/
$app->get('/test[/]',ControllerMembre::class.':test');
$app->run();