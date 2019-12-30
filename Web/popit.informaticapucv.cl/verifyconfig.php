<?php
include 'database.php';
$minNumber = $_POST['minNumber'];
$maxNumber = $_POST['maxNumber'];
$bonusProbability = $_POST['bonusProbability'];
$bonusPlus = $_POST['bonusPlus'];
$debugMode = $_POST["debugMode"];
$bonusMultiplier = $_POST["bonusMultiplier"];
$bonusFiftyFifty = $_POST["bonusFiftyFifty"];
$bonusShowCorrect = $_POST["bonusShowCorrect"];
$minSpeed = $_POST["minSpeed"];
$maxSpeed = $_POST["maxSpeed"];
$vidas = $_POST["vidas"];
$porcBuenas = $_POST['porcBuenas'];
$porcMalas = $_POST['porcMalas'];
$minNumber = $row["minNumber"];
$maxNumber = $row["maxNumber"];
$bonusProbability = $row["bonusProbability"];
$bonusPlus = $row["bonusPlus"];
$debugModeMode = $row["debugModeMode"];
$bonusMultiplier = $row["bonusMultiplier"];
$bonusFiftyFifty = $row["bonusFiftyFifty"];
$bonusShowCorrect = $row["bonusShowCorrect"];
$minSpeed = $row["minSpeed"];
$maxSpeed = $row["maxSpeed"];
$vidas = $row["vidas"];
$rangoBuena = $row["rangoBuena"];


$nro = $maxNumber-$minNumber+1;
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
if($maxNumber<=$minNumber){
    $Message = urlencode("Mayor múltiplo debe ser mayor a menor múltiplo.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($bonusProbability<0 || $bonusProbability>100){
    $Message = urlencode("Porcentaje de ocurrencia debe ser mayor a cero y menor a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($bonusPlus<0 || $bonusPlus>100){
    $Message = urlencode("Porcentaje de bonus '+100 puntos' debe ser mayor a cero y menor a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($bonusFiftyFifty<0 || $bonusFiftyFift>100){
    $Message = urlencode("Porcentaje de bonus '50:50' debe ser mayor a cero y menor a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($bonusShowCorrect<0 || $bonusShowCorrect>100){
    $Message = urlencode("Porcentaje de bonus 'Mostrar correcta' debe ser mayor a cero y menor a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($bonusMultiplier<0 || $bonusMultiplier>100){
    $Message = urlencode("Porcentaje de bonus 'Multiplicador (2-5) de puntos ganados' debe ser mayor a cero y menor a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($bonusMultiplier+$bonusFiftyFifty+$bonusShowCorrect+$bonusPlus>100){
    $Message = urlencode("Porcentajes de ocurrencia de bonus deben sumar cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

$bonusMultiplier = $bonusMultiplier/100;
$bonusFiftyFifty = $bonusFiftyFifty/100;
$bonusShowCorrect = $bonusShowCorrect/100;
$bonusPlus = $bonusPlus/100;
$bonusProbability = $bonusProbability/100;
$porcBuenas = $porcBuenas/100;
$porcMalas = $porcMalas/100;
$rangoBuena = $rangoBuena/100;

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
//if($grupo==0) {
    $sql = "UPDATE popit_parametros_con
    SET minNumber='$minNumber', maxNumber='$maxNumber', bonusProbability='$bonusProbability', 
    bonusPlus='$bonusPlus', debugMode='$debugMode', bonusMultiplier='$bonusMultiplier', bonusFiftyFifty='$bonusFiftyFifty', 
    bonusShowCorrect='$bonusShowCorrect', minSpeed='$minSpeed', maxSpeed='$maxSpeed', vidas='$vidas', porcBuenas='$porcBuenas', porcMalas='$porcMalas', rangoBuena='$rangoBuena'";
//}
//if($grupo==1){
 //   $sql = "UPDATE plat_parametros_exp
 //   SET minNumber='$minNumber', maxNumber='$maxNumber', bonusProbability='$bonusProbability', bonusPlus='$bonusPlus', debugMode='$debugMode', bonusMultiplier='$bonusMultiplier', bonusFiftyFifty='$bonusFiftyFifty', bonusShowCorrect='$bonusShowCorrect', minSpeed='$minSpeed', maxSpeed='$maxSpeed', vidas='$vidas'";
//}
if ($conexion->query($sql) === TRUE) {
} 
mysqli_close($conexion); 

$Message = urlencode("Actualizado con éxito.");
header("Location: config.php?Message=".$Message."&grupo=".$grupo);
exit();
?>