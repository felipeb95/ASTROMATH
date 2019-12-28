<?php
include 'database.php';

define( 'RESTRICTED', true );

require( 'header.php' );
if (!isset($_SESSION['user']) || $_SESSION['grupo']!=2) {
    header("Location: index.php");
    exit();
  }
$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
if($_GET['grupo'] == 0){
    $sql = "SELECT * FROM luxmath_parametros";
}
if($_GET['grupo'] == 1){
    $sql = "SELECT * FROM luxmath_parametros";
}

$result = $conexion->query($sql);
while($row = $result->fetch_assoc()) {
    $menorMultiplo = $row["menorMultiplo"];
    $mayorMultiplo = $row["mayorMultiplo"];
    $porcBuenas = $row["porcBuenas"];
    $porcMalas = $row["porcMalas"];
    $debug = $row["debug"];
    $vidas = $row["vidas"];
    $feedback = $row["feedback"];
    $cMin = $row["cMin"];
    $cMax = $row["cMax"];
    $cRango = $row["cRango"];
    $vMin = $row["vMin"];
    $vMax = $row["vMax"];
    $vRango = $row["vRango"];
    $multi = $row["multi"];
    $slowmo = $row["slowmo"];
    $freeze = $row["freeze"];
    $correcta = $row["correcta"];
    $reversa = $row["reversa"];
    $bonusprob = $row["bonusprob"];

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

        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
        <!-- Plugin CSS -->
        <link rel="stylesheet" href="device-mockups/device-mockups.min.css">
        <!-- Custom styles for this template -->
        <link href="css/new-age.min.css" rel="stylesheet">
    </head>
    <body id="page-top">
    <header class="clearfix fixed-nav-bar">
    <div class="container">
      <div class="header-left">
        <h1><span class="span-logo">
        </span></h1>
      </div>
      <div class="header-right">
        <label for="open">
          <span class="hidden-desktop"></span>
        </label>
        <input type="checkbox" name="" id="open">
        <nav>
            <a class="navlink hvr-fade" href="superAdmin.php">Volver</a>
          <a class="navlinklogout hvr-bounce-in" href="logout.php">Cerrar sesión</a>
        </nav>
      </div>
    </div>
</header>
        <!-- Navigation -->
        
        <section class="download bg-primary text-center" id="download">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <h1><?php if(isset($_GET['Message'])) echo $_GET['Message']; ?></h1>
                        <h2 class="section-heading">Cambiar parámetros</h2>
                        <form action="verifyconfig.php" method="post">
                            Debug<br>
                            <?php if($debug==1){?>
                            <input type="radio" class="form" name="debug" value="1" checked required> Sí
                            <input type="radio" class="form" name="debug" value="0" required> No
                            <br>
                            <?php } if($debug==0){?>
                            <input type="radio" class="form" name="debug" value="1" required> Sí
                            <input type="radio" class="form" name="debug" value="0" checked required> No
                            <br>
                            <?php } ?>
                            Feedback<br>
                            <?php if($feedback==1){?>
                            <input type="radio" class="form" name="feedback" value="1" checked required> No mostrar resultado
                            <input type="radio" class="form" name="feedback" value="2" required> Mostrar resultado
                            <br>
                            <?php } if($feedback==2){?>
                            <input type="radio" class="form" name="feedback" value="1" required> No mostrar resultado
                            <input type="radio" class="form" name="feedback" value="2" checked required> Mostrar resultado
                            <br>
                            <?php } ?>
                            Menor Múltiplo
                            <input type="number" name="menorMultiplo" class="form-control" placeholder="Menor Múltiplo" value=<?php echo $menorMultiplo ?>>
                            <br>
                            Mayor Múltiplo
                            <input type="number" name="mayorMultiplo" class="form-control" placeholder="Mayor Múltiplo" value=<?php echo $mayorMultiplo ?>>
                            <br>
                            <br>
                            Porcentaje de buenas memoria
                            <input type="number" name="porcBuenas" class="form-control" placeholder="Porcentaje de buenas" value=<?php echo $porcBuenas*100 ?>>
                            <br>
                            Porcentaje de malas memoria
                            <input type="number" name="porcMalas" class="form-control" placeholder="Porcentaje de malas" value=<?php echo $porcMalas*100 ?>>
                            <br>   
                            Vidas
                            <input type="number" name="vidas" class="form-control"  value=<?php echo $vidas ?>>
                            <br>
                            Cantidad mínima de pelotas
                            <input type="number" name="cMin" class="form-control"  value=<?php echo $cMin ?>>
                            <br>
                            Cantidad máxima de pelotas
                            <input type="number" name="cMax" class="form-control"  value=<?php echo $cMax ?>>
                            <br>
                            Rango de aumento de pelotas
                            <input type="number" name="cRango" class="form-control"  value=<?php echo $cRango ?>>
                            <br>
                            Velocidad mínima
                            <input type="number" step="0.01" name="vMin"  class="form-control"  value=<?php echo $vMin ?>>
                            <br>
                            Velocidad máxima
                            <input type="number" step="0.01" name="vMax"  class="form-control"  value=<?php echo $vMax ?>>
                            <br>
                            Rango de aumento de velocidad
                            <input type="number" step="0.01" name="vRango"  class="form-control"  value=<?php echo $vRango ?>>
                            <br>
                            Probabilidad de multi
                            <input type="number" name="multi" class="form-control" placeholder="Porcentaje de malas" value=<?php echo $multi*100 ?>>
                            <br> 
                            Probabilidad de slowmo
                            <input type="number" name="slowmo" class="form-control" placeholder="Porcentaje de malas" value=<?php echo $slowmo*100 ?>>
                            <br> 
                            Probabilidad de freeze
                            <input type="number" name="freeze" class="form-control" placeholder="Porcentaje de malas" value=<?php echo $freeze*100 ?>>
                            <br> 
                            Probabilidad de correcta
                            <input type="number" name="correcta" class="form-control" placeholder="Porcentaje de malas" value=<?php echo $correcta*100 ?>>
                            <br> 
                            Probabilidad de reversa
                            <input type="number" name="reversa" class="form-control" placeholder="Porcentaje de malas" value=<?php echo $reversa*100 ?>>
                            <br> 
                            Probabilidad de aparición bonus
                            <input type="number" name="bonusprob" class="form-control" placeholder="Porcentaje de malas" value=<?php echo $bonusprob*100 ?>>
                            <br> 
                            <br>
                            <input type="hidden" name="grupo" class="form-control" value=<?php echo $_GET['grupo'];?>>
                            <input type="submit" class="btn btn-default">
                        </input>
                    </div>
                </div>
            </div>
        </section>
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
