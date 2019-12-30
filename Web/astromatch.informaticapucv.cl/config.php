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
if($_GET["grupo"]==0){
    $sql = "SELECT * FROM astromatch_parametros_con";
}
if($_GET["grupo"]==1){
    $sql = "SELECT * FROM astromatch_parametros_exp";
}
$result = $conexion->query($sql);
while($row = $result->fetch_assoc()) {
    $pBuenas = $row["pBuenas"];
    $pMalas = $row["pMalas"];
    $pNuevas = $row["pNuevas"];
    $min_vel = $row["min_vel"];
    $max_vel = $row["max_vel"];
    $acel = $row["acel"];
    $epe = $row["epe"];
    $p_adapt_vel = $row["p_adapt_vel"];
    $debug = $row["debug"];
    $carril = $row["carril"];
    $bonus = $row["bonus"];
    $bonus_prob = $row["bonus_prob"];

    $shield_prob = $row["shield_prob"];
    $_100points_prob = $row["_100points_prob"];
    $_50points_prob = $row["_50points_prob"];
    $turbo_prob = $row["turbo_prob"];
    $multiplier_prob = $row["multiplier_prob"];
    $slowed_prob = $row["slowed_prob"];
    $zigzag_start = $row["zigzag_start"];
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Configuración</title>
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
        <a href="#top" class="navlink"><img id="img" src="astromath.png" /></a>
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
                            <br>
                            <br>
                            Activar movimiento por carril<br>
                            <?php if($carril==1){?>
                            <input type="radio" class="form" name="carril" value="1" checked required> Sí
                            <input type="radio" class="form" name="carril" value="0" required> No
                            <br>
                            <?php } if($carril==0){?>
                            <input type="radio" class="form" name="carril" value="1" required> Sí
                            <input type="radio" class="form" name="carril" value="0" checked required> No
                            <br>
                            <?php } ?>
                            <br>
                            <br>
                            Versión con bonus y jefe<br>
                            <?php if($bonus==1){?>
                            <input type="radio" class="form" name="bonus" value="1" checked required> Sí
                            <input type="radio" class="form" name="bonus" value="0" required> No
                            <br>
                            <?php } if($bonus==0){?>
                            <input type="radio" class="form" name="bonus" value="1" required> Sí
                            <input type="radio" class="form" name="bonus" value="0" checked required> No
                            <br>
                            <?php } ?>
                            <br>
                            Porcentaje de buenas memoria
                            <input type="number" name="pBuenas" class="form-control" min="0" max="100" placeholder="Porcentaje de buenas" value=<?php echo $pBuenas*100 ?>>
                            <br>
                            Porcentaje de malas memoria
                            <input type="number" name="pMalas" class="form-control" min="0" max="100" placeholder="Porcentaje de malas" value=<?php echo $pMalas*100 ?>>
                            <br>
                            Porcentaje de nuevas memoria
                            <input type="number" name="pNuevas" class="form-control" min="0" max="100" placeholder="Porcentaje de nuevas" value=<?php echo $pNuevas*100 ?>>
                            <br>
                            Velocidad mínima
                            <input type="number" name="min_vel" min="1" step="0.01" class="form-control" placeholder="Máxima velocidad" value=<?php echo $min_vel*-1 ?>>
                            <br>
                            Velocidad máxima
                            <input type="number" name="max_vel" min="1" step="0.01" class="form-control" placeholder="Mínima velocidad" value=<?php echo $max_vel*-1 ?>>
                            <br>
                            Aceleración
                            <input type="number" name="acel" min="0" step="0.01" class="form-control" placeholder="Aceleración" value=<?php echo $acel?>>
                            <br>
                            Ejercicios por Nivel
                            <input type="number" name="epe" min="1" class="form-control" placeholder="Ejercicios por Nivel" value=<?php echo $epe?>>
                            <br>
                            Porcentaje respuesta para aumento de velocidad
                            <input type="number" name="p_adapt_vel" min="0" max="100" class="form-control" placeholder="Porcentaje respuesta para aumento de velocidad" value=<?php echo $p_adapt_vel*100 ?>>
                            <br>
                            <br>
                            Porcentaje de ocurrencia de bonuses
                            <input type="number" name="bonus_prob" min="0" max="100" class="form-control" placeholder="Porcentaje respuesta para aumento de velocidad" value=<?php echo $bonus_prob*100 ?>>
                            <br>
                            Porcentaje de aparación de escudo
                            <input type="number" name="shield_prob" min="0" max="100" class="form-control" value=<?php echo $shield_prob*100 ?>>
                            <br>
                            Porcentaje de aparación de bonus 100 puntos
                            <input type="number" name="_100points_prob" min="0" max="100" class="form-control" value=<?php echo $_100points_prob*100 ?>>
                            <br>
                            Porcentaje de aparación de bonus 50 puntos
                            <input type="number" name="_50points_prob" min="0" max="100" class="form-control" value=<?php echo $_50points_prob*100 ?>>
                            <br>
                            Porcentaje de aparación de turbo
                            <input type="number" name="turbo_prob" min="0" max="100" class="form-control" value=<?php echo $turbo_prob*100 ?>>
                            <br>
                            Porcentaje de aparación de multiplicador de puntaje
                            <input type="number" name="multiplier_prob" min="0" max="100" class="form-control" value=<?php echo $multiplier_prob*100 ?>>
                            <br>
                            Porcentaje de aparación de reducción de velocidad
                            <input type="number" name="slowed_prob" min="0" max="100" class="form-control" value=<?php echo $slowed_prob*100 ?>>
                            <br>
                            Ronda en la que aparece efecto zig zag
                            <input type="number" name="zigzag_start" min="1" class="form-control" value=<?php echo $zigzag_start ?>>
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
