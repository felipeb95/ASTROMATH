<?php
session_start();
if (!isset($_SESSION['user']) || $_SESSION['grupo']!=2) {
  header("Location: index.php");
  exit();
}

?>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Opciones SuperAdmin</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.7/angular.min.js"></script>
    <script src="app.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Bungee|Fjalla+One|Rubik" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="estiloPerfiles.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script src=”https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js”></script>
</head>
<body ng-app = "myapp">
<header class="clearfix fixed-nav-bar">
    <div class="container">
      <div class="header-left">
        <h1><span class="span-logo">
        <a href="#top" class="navlink"><img id="img" src="astromath.png" /></a>
        </span></h1>
      </div>
      <div class="header-right">
        <label for="open">
          <span class="hidden-desktop"></span>
        </label>
        <input type="checkbox" name="" id="open">
        <nav>
          <a class="navlinklogout hvr-bounce-in" href="logout.php">Cerrar sesión</a>
        </nav>
      </div>
    </div>
</header>
<div class = "row" style="margin-top:70px;">

    <div class="col-md-12"> 
        <h1 class="titulo" id="funciones"> Funciones </h1>
        <div style="text-align:center; margin-top: 50px;">
        <a href="generarexcel.php"><button class="btn"><i class="fa fa-download"></i> Descargar Excel</button></a>
        <br><br>
        <a href="config.php?grupo=0"><button class="btn"><i class="fa fa-gear"></i> Configurar parámetros grupo control AstroMatch</button></a>
        <br><br>
        <a href="config.php?grupo=1"><button class="btn"><i class="fa fa-gear"></i> Configurar parámetros grupo experimental AstroMatch</button></a>
        <br><br>
        <a href="agregarPregunta.php"><button class="btn"><i class="fa fa-plus"></i> Agregar pregunta AstroMatch</button></a>
        <br><br>
        <a href="verPreguntas.php"><button class="btn"><i class="fa fa-eye"></i> Ver preguntas AstroMatch</button></a>
        </div>
    </div>

</div>

</body>


</html>