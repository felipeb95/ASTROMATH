<?php

include 'database.php';

define( 'RESTRICTED', true );
require( 'header.php' );
if (!isset($_SESSION['user'])) {
  header("Location: index.php");
  exit();
}
$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}

$sql = "SELECT * FROM users WHERE id=".$_SESSION['id'];


$result = $conexion->query($sql);
while($row = $result->fetch_assoc()) {
    $nLogin = $row["nLogin"];
    $highscore = $row["highscore"];
}

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tu perfil</title>
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
          <?php if($_SESSION["grupo"]==0){?><a class="navlinkplay" href="game-v1" target="_blank">J U G A R</a>
          <?php }if($_SESSION["grupo"]==1){?><a class="navlinkplay" href="game-v2" target="_blank">J U G A R</a><?php } ?>
          <a class="navlink hvr-fade" href="#puntuaciones">Tabla de puntajes</a>
          <a class="navlink hvr-fade" href="#instrucciones">Instrucciones</a>
          <a class="navlinklogout hvr-bounce-in" href="logout.php">Cerrar sesión</a>
        </nav>
      </div>
    </div>
  </header>

<div class="container-fluid" id="top">
<a href="#" id="scroll" style="display: none;"><span></span></a>
<div class = "row">

    <div class="col-md-12" id="nombre"> 
        <h1 style="text-align: center;margin-top:80px"> Hola, <b><?php echo $_SESSION["nombre"]; ?></b>, bienvenido a tu perfil.</h1>
    </div>

</div>

<div class = "row" style="margin-top: 50px;">

    <div class="col-md-4" id="info"> 
        <h1 class="titulo"> Información </h1>
        <p class="datos">
          <?php 
          echo $_SESSION["curso"]." básico ".$_SESSION["letra"];
          ?>
        </p>
        <p class="datos">
        <?php 
          echo $_SESSION["colegio"];
        ?>
        </p>
    </div>

    <div class="col-md-4" id="info"> 
        <h1 class="titulo"> Mejor puntuación </h1>
        <span class="cifra" style="font-size: 50px;">
          <?php echo $highscore; ?>
        </span>
    </div>

    <div class="col-md-4" id="info"> 
        <h1 class="titulo"> Sesiones iniciadas </h1>
        <span class="cifra" style="font-size: 50px;">
          <?php echo $nLogin; ?>
        </span>
    </div>

</div>


<div class = "row" id="puntuaciones">

    <div class="col-md-2"></div>
    <div class="col-md-8" ng-controller="puntuaciones"  style="margin-top:70px;">
      <h1 class="titulo"> Mejores puntuaciones </h1>
      <p class="textorelleno" style="text-align:center;margin-top:50px;"> En la tabla a continuación puedes ver el puntaje tuyo y de todos tus compañeros ordenados de mayor a menor. Puedes buscar a tus amigos escribiendo su nombre en la barrita de búsqueda sobre la tabla.</p>
    <div class="input-group" style="margin-top:30px;">
              <!--<span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-search"></i></span>-->
              <input type="text" class="form-control" placeholder="Buscar compañeros" aria-describedby="basic-addon1" ng-model="searchText">
    </div>
     <div  class="tablaPuntuaciones"> 
        <table style="margin:0 auto;" border=1 class="tablaSeg">
          <th class="titulostabla"> Puntaje </th>
          <th class="titulostabla"> Nombre </th>
          <th class="titulostabla"> Colegio </th>
          <th class="titulostabla"> Curso </th>
          <th class="titulostabla"> Perfil </th>
          <tr ng-repeat = "h in highscores | filter:searchText">
            <td class="titulostabla" id="puntajetabla"> {{h.highscore}}</td>
            <td class="titulostabla"> {{h.nombre}}</td>
            <td class="titulostabla"> {{h.colegio}}</td>
            <td class="titulostabla"> {{h.curso}} básico {{h.letra}}</td>  
            <td style="padding-top:10px; text-align:center;width: 20px;"><a class="linkstabla" href="perfilAlumno.php?id={{h.id}}" target="_blank">Ir a perfil</a></td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="col-md-2"></div>

</div>

<div class = "row" style="margin-top:70px;">

    <div class="col-md-12"> 
        <h1 class="titulo" id="instrucciones"> Instrucciones </h1>
        <div style="text-align:center; margin-top: 50px;">
            <p class="textorelleno"> En el siguiente video encontrarás instrucciones sobre cómo jugar una vez que comiences una partida </p>
            <<iframe style="margin-top:20px;" width="560" height="315" src="https://www.youtube.com/embed/Lcn4C13gfD8?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>

</div>


<div class = "row" style="margin-top:50px;">

</div>

  <a onclick="topFunction()" href="#top" id="button" title="Go to top"></a> 

</div> <!--SE CIERRA EL CONTAINER-->

</body>

</html>

<style>
 
</style>

<script>


    jQuery(document).ready(function() {
      
      var btn = $('#button');

      $(window).scroll(function() {
        if ($(window).scrollTop() > 300) {
          btn.addClass('show');
        } else {
          btn.removeClass('show');
        }
      });

    });

</script>

<script>
   // Select all links with hashes
  $('a[href*="#"]')
    // Remove links that don't actually link to anything
    .not('[href="#"]')
    .not('[href="#0"]')
    .click(function(event) {
      // On-page links
      if (
        location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
        && 
        location.hostname == this.hostname
      ) {
        // Figure out element to scroll to
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
        // Does a scroll target exist?
        if (target.length) {
          // Only prevent default if animation is actually gonna happen
          event.preventDefault();
          $('html, body').animate({
            scrollTop: target.offset().top
          }, 1000, function() {
            // Callback after animation
            // Must change focus!
            var $target = $(target);
            $target.focus();
            if ($target.is(":focus")) { // Checking if the target was focused
              return false;
            } else {
              $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
              $target.focus(); // Set focus again
            };
          });
        }
      }
    });
</script>