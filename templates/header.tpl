<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/stylesconbootstrap.css" rel="stylesheet">
</head>

<body>
    <header>
        <!-- BARRA NAVEGACION -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark barranavegacion">
            <!-- BOTON COLLAPSE -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="col 2 ">
                <a class="navbar-brand " id="logo" href="#">MU AZEROTH</a>
            </div>
            <div class="col-sm-2 mr-auto">
            </div>
            <div class="collapse navbar-collapse col" id="navbarSupportedContent">
                <div class="w-100">
                    <ul class=" navbar-nav  menunavegacion text-sm-center w-100">
                        <li class="nav-item active  botones col  ">
                            <a class="nav-link " id="inicio" href="home">
                                <p>Inicio</p>
                                <span class="sr-only ">(current)</span></a>
                        </li>
                        <li class="nav-item botones col ">
                            <a class="nav-link " href="registro" id="registro">
                                <p>Registrarse</p>
                            </a>
                        </li>
                        <li class="nav-item botones col">
                            <a class="nav-link " id="informacion" href="info">
                                <p>Informacion</p>
                            </a>
                        </li>
                        <li class="nav-item botones col">
                            <a class="nav-link " id="usuariosvip" href="usuariosvip">
                                <p>Usuarios VIP</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>