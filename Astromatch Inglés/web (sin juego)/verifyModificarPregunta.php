<?php
include 'database.php';
//$url = $_POST['url'];
$correcta = $_POST['correcta'];
$alternativas = $_POST['alternativas'];
$activa = $_POST['activa'];
$id = $_POST['id'];

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "UPDATE question
        SET correcta='$correcta', alternativas='$alternativas', activa='$activa' WHERE id='$id'";
if ($conexion->query($sql) === TRUE) {
    $Message = urlencode("Fila actualizada correctamente.");
    header("Location: verPreguntas.php?Message=".$Message);
    die;
} else {
    $Message = urlencode("Error ".$conexion->error);
    header("Location: verPreguntas.php?Message=".$Message);
    die;
}
$conexion->close;

?>