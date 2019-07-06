<?php
include 'database.php';
$pNuevas = $_POST['pNuevas'];
$pBuenas = $_POST['pBuenas'];
$pMalas = $_POST['pMalas'];
$min_vel = $_POST['min_vel'];
$max_vel = $_POST['max_vel'];
$acel = $_POST['acel'];
$grupo = $_POST['grupo'];

$suma=$pNuevas+$pBuenas+$pMalas;
if($max_vel<=$min_vel){
    $Message = urlencode("Máxima velocidad debe ser mayor a la mínima.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}
if($suma!=100){
    $Message = urlencode("Suma de porcentajes debe ser igual a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

$pBuenas = $pBuenas/100;
$pMalas = $pMalas/100;
$pNuevas = $pNuevas/100;
$min_vel = $min_vel*-1;
$max_vel = $max_vel*-1;

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
if($grupo==0){
    $sql = "UPDATE astromatch_parametros_con
        SET pBuenas='$pBuenas', pMalas='$pMalas', pNuevas='$pNuevas', min_vel='$min_vel', max_vel='$max_vel', acel='$acel'";

}
if($grupo==1){
    $sql = "UPDATE astromatch_parametros_exp
        SET pBuenas='$pBuenas', pMalas='$pMalas', pNuevas='$pNuevas', min_vel='$min_vel', max_vel='$max_vel', acel='$acel'";

}
if ($conexion->query($sql) === TRUE) {
    $Message = urlencode("Actualizado con éxito.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    exit();
} 
mysqli_close($conexion); 


?>