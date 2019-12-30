<?php
include 'database.php';
$menorMultiplo = $_POST['menorMultiplo'];
$mayorMultiplo = $_POST['mayorMultiplo'];
$porcBuenas = $_POST['porcBuenas'];
$porcMalas = $_POST['porcMalas'];
$debug = $_POST["debug"];
$pPuntos = $_POST["pPuntos"];
$pMultiplicador = $_POST["pMultiplicador"];
$pEscudo = $_POST["pEscudo"];
$pPoder = $_POST["pPoder"];
$pSlowmo = $_POST["pSlowmo"];
$vidas = $_POST["vidas"];
$feedback = $_POST["feedback"];
$tInicial = $_POST["tInicial"];
$tAumento = $_POST["tAumento"];
$porcT = $_POST["porcT"];
$tiempo = $_POST["tiempo"];
$tMin = $_POST["tMin"];
$tMax = $_POST["tMax"];
$timeMuerte = $_POST["timeMuerte"];


$nro = $mayorMultiplo-$menorMultiplo+1;

if($mayorMultiplo<=$menorMultiplo){
    $Message = urlencode("Mayor múltiplo debe ser mayor a menor múltiplo.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($porcBuenas<0 || $porcBuenas>100){
    $Message = urlencode("Porcentaje de buenas debe ser mayor a cero y menor a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($porcMalas<0 || $porcMalas>100){
    $Message = urlencode("Porcentaje de malas debe ser mayor a cero y menor a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($pPuntos+$pMultiplicador+$pEscudo+$pPoder+$pSlowmo>100){
    $Message = urlencode("Pôrcentajes de bonus deben sumar cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

$pPuntos = $pPuntos/100;
$porcT = $porcT/100;
$pMultiplicador = $pMultiplicador/100;
$pEscudo = $pEscudo/100;
$pPoder = $pPoder/100;
$pSlowmo = $pSlowmo/100;
$porcBuenas = $porcBuenas/100;
$porcMalas = $porcMalas/100;


$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
//if($grupo==0) {
    $sql = "UPDATE plat_parametros_con
    SET menorMultiplo='$menorMultiplo', mayorMultiplo='$mayorMultiplo', porcBuenas='$porcBuenas', porcMalas='$porcMalas', debug='$debug', pPuntos='$pPuntos', pMultiplicador='$pMultiplicador', pEscudo='$pEscudo'
    , pPoder='$pPoder', pSlowmo='$pSlowmo', vidas='$vidas', feedback='$feedback', tInicial='$tInicial', tAumento='$tAumento', porcT='$porcT', tiempo='$tiempo', tMin='$tMin', tMax='$tMax', timeMuerte='$timeMuerte'";
//}
//if($grupo==1){
  //  $sql = "UPDATE plat_parametros_exp
   // SET menorMultiplo='$menorMultiplo', mayorMultiplo='$mayorMultiplo', porcBuenas='$porcBuenas', porcMalas='$porcMalas', debug='$debug', pPuntos='$pPuntos', pMultiplicador='$pMultiplicador', pEscudo='$pEscudo', pPoder='$pPoder', pSlowmo='$pSlowmo', vidas='$vidas'";
//}
if ($conexion->query($sql) === TRUE) {
} 
mysqli_close($conexion); 

$Message = urlencode("Actualizado con éxito.");
header("Location: config.php?Message=".$Message."&grupo=".$grupo);
exit();
?>