<?php
require 'config/config.php';
require 'vendor/autoload.php';
$app = new Slim\App();
$container = $app->getContainer();
$container['view'] = function ($container) {
	$view = new \Slim\Views\Twig('views', [
		'cache' => false
	]);
	$basePath = rtrim(str_ireplace('index.php', '', $container['request']->getUri()->getBasePath()), '/');
	$view->addExtension(new Slim\Views\TwigExtension($container['router'], $basePath));
	return $view;
};
$dbh = new \PDO("mysql:host=".MYSQL_HOST.";dbname=".MYSQL_DATABASE, MYSQL_USER, MYSQL_PASSWORD);


$app->get('/members', function ($request, $response, $args) use ($app, $dbh) {

	$sql = "SELECT members.*, capo.name as capo_name
			FROM members LEFT JOIN members as capo
			ON members.capo_id = capo.id ORDER BY years DESC";

	$rs = $dbh->query($sql, PDO::FETCH_ASSOC);
	$members = $rs->fetchAll(PDO::FETCH_OBJ);

	return $this->view->render($response, 'members.html', [
		'members' => $members
	]);
});

$app->get('/imprison/{id}', function ($request, $response, $args) use ($app, $dbh) {
	$response->write('Mètode empresonar');
});


$app->get('/compare', function ($request, $response, $args) use ($app, $dbh) {
	return $this->view->render($response, 'compare.html');
});

$app->post('/compare', function ($request, $response, $args) use ($app, $dbh) {
	$response->write('Algoritme de comparar');
});

$app->run();
