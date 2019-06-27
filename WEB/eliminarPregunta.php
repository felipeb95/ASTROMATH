<?php
include 'database.php';

define( 'RESTRICTED', true );

require( 'header.php' );
if (!isset($_SESSION['user']) || $_SESSION['grupo']!=2) {
    header("Location: index.php");
    exit();
}
$id = $_GET['id'];

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "DELETE FROM question WHERE id=".$id."";
if ($conexion->query($sql) === TRUE) {
    $Message = urlencode("Fila eliminada correctamente.");
    header("Location: verPreguntas.php?Message=".$Message);
    die;
} else {
    $Message = urlencode("Error ".$conexion->error);
    header("Location: verPreguntas.php?Message=".$Message);
    die;
}
$conexion->close;

?>