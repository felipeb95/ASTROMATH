<?php
include 'database.php';
$menorMultiplo = $_POST['menorMultiplo'];
$mayorMultiplo = $_POST['mayorMultiplo'];
$porcBuenas = $_POST['porcBuenas'];
$porcMalas = $_POST['porcMalas'];
$debug = $_POST["debug"];
$vidas = $_POST["vidas"];
$feedback = $_POST["feedback"];
$tInicial = $_POST["cMin"];
$tAumento = $_POST["cMax"];
$porcT = $_POST["cRango"];
$tiempo = $_POST["vMin"];
$tMin = $_POST["vMax"];
$tMax = $_POST["vRango"];
$multi = $_POST["multi"];
$slowmo = $_POST["slowmo"];
$freeze = $_POST["freeze"];
$correcta = $_POST["correcta"];
$reversa = $_POST["reversa"];
$bonusprob = $_POST["bonusprob"];


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
if(($multi+$slowmo+$freeze+$correcta+$reversa)!=100){
    $Message = urlencode("Suma de bonuses multi, slowmo, freeze, correcta y reversa debe ser 100.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

$porcBuenas = $porcBuenas/100;
$porcMalas = $porcMalas/100;
$multi = $multi/100;
$slowmo = $slowmo/100;
$freeze = $freeze/100;
$correcta = $correcta/100;
$reversa = $reversa/100;
$bonusprob = $bonusprob/100;


$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
//if($grupo==0) {
    $sql = "UPDATE luxmath_parametros
    SET menorMultiplo='$menorMultiplo', mayorMultiplo='$mayorMultiplo', porcBuenas='$porcBuenas', porcMalas='$porcMalas', debug='$debug'
    , vidas='$vidas', feedback='$feedback', cMin='$cMin', cMax='$cMax', cRango='$cRango', vMin='$vMin', vMax='$vMax', vRango='$vRango'
    , multi='$multi', slowmo='$slowmo', freeze='$freeze', correcta='$correcta', reversa='$reversa', bonusprob='$bonusprob'";
//}
//if($grupo==1){
  //  $sql = "UPDATE luxmath_parametros
   // SET menorMultiplo='$menorMultiplo', mayorMultiplo='$mayorMultiplo', porcBuenas='$porcBuenas', porcMalas='$porcMalas', debug='$debug', pPuntos='$pPuntos', pMultiplicador='$pMultiplicador', pEscudo='$pEscudo', pPoder='$pPoder', pSlowmo='$pSlowmo', vidas='$vidas'";
//}
if ($conexion->query($sql) === TRUE) {
} 
mysqli_close($conexion); 

$Message = urlencode("Actualizado con éxito.");
header("Location: config.php?Message=".$Message."&grupo=".$grupo);
exit();
?>