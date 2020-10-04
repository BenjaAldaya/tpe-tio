<?php
include_once 'app/controllers/page.controller.php';


// defino la base url para la construccion de links con urls semánticas
define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home'; // acción por defecto si no envían
}

// parsea la accion Ej: suma/1/2 --> ['suma', 1, 2]
$params = explode('/', $action);

// determina que camino seguir según la acción
switch ($params[0]) {
    case 'home':
        $controller = new pageController();
        $controller->showHome();
    break;
    case 'info':
        $controller = new pageController();
        $controller->showInfo();
    break;
    case 'registro':
        $controller = new pageController();
        $controller->showRegister();
    break;
    case 'usuariosvip':
        $controller = new pageController();
        $controller->showUsersVip();
    break;
    default:
        header("HTTP/1.0 404 Not Found");
        $msg = '404 not found';
        $controller = new pageController();
        $controller->showError($msg);
    break;
}
