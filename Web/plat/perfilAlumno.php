<?php 
$idAlumno = $_GET['id'];

define( 'RESTRICTED', true );

require( 'header.php' );
if (!isset($_SESSION['user'])) {
  header("Location: index.php");
  exit();
}
include 'database.php';

$con = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
$query = "SELECT * FROM users WHERE id=".$idAlumno;
$result = mysqli_query($con, $query);

if ($result->num_rows > 0) {     
    $row = $result->fetch_array(MYSQLI_ASSOC);
    $dataAlumno = array("id"=>$row['id'],"highscore"=>$row['highscore'],"nombre"=>$row['nombre'],"apellido"=>$row['apellido'],"colegio"=>$row['colegio'],"nLogin"=>$row['nLogin'],"letra"=>$row['letra'],"curso"=>$row['curso'],"promedio"=>$row['promedio'],"nRondas"=>$row['nRondas']);
}
$con->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.7/angular.min.js"></script>
    <script src="app.js"></script>
    <!-- Bootstrap core CSS -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Perfil</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
    <!-- Plugin CSS -->
    <link rel="stylesheet" href="device-mockups/device-mockups.min.css">
    <!-- Custom styles for this template -->
    <link href="css/new-age.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/responsive.css">
</head>
  
<body id="page-top" ng-app = "myapp">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">AstroMath</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <?php if($_SESSION["grupo"]==0){?><a class="nav-link js-scroll-trigger" href="game-v1" target="_blank">Jugar</a>
              <?php }if($_SESSION["grupo"]==1){?><a class="nav-link js-scroll-trigger" href="game-v2" target="_blank">Jugar</a><?php } ?>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="logout.php">Cerrar sesión</a>
            </li>
        </ul>
      </div>
    </div>
  </nav>

  <section class="features" id="features">
    <div class="container">
      <div class="section-heading text-center">
        <h3 style="text-align: center;margin-top:80px"> Perfil de <b><?php echo $dataAlumno["nombre"];?> </b></h2>
      </div>
      <div class = "row" style="margin-top: 50px;">
        <div class="col-md-4" id="info"> 
          <h3 class="titulo"> Información </h1>
          <p class="datos">
            <?php 
              echo $dataAlumno["curso"]." básico ".$dataAlumno["letra"];
            ?>
          </p>
          <p class="datos">
            <?php 
              echo $dataAlumno["colegio"];
            ?>
          </p>
        </div>
        <div class="col-md-4" id="info"> 
          <h3 class="titulo"> Mejor puntuación </h1>
          <p class="datos">
            <?php echo $dataAlumno["highscore"]; ?>
          </p>
        </div>
        <div class="col-md-4" id="info"> 
          <h3 class="titulo"> Sesiones iniciadas </h1>
          <p class="datos">
            <?php echo $dataAlumno["nLogin"]; ?>
          </p>
        </div>
      </div>
    </div>
  </section>

    
  <footer>
    <div class="container">
      <p>&copy; 2017 Start Bootstrap. All Rights Reserved.</p>
    </div>
  </footer>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Custom scripts for this template -->
  <script src="js/new-age.min.js"></script>
</body>

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