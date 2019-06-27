<?php
include 'database.php';
$url = $_POST['url'];
$correcta = $_POST['correcta'];
$alt1 = $_POST['alt1'];
$alt2 = $_POST['alt2'];
$alt3 = $_POST['alt3'];
$alt4 = $_POST['alt4'];
$alternativas = '{"'.$correcta.'","'.$alt1.'","'.$alt2.'","'.$alt3.'","'.$alt4.'"}';

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}

$sql = "SELECT * from question where correcta='$correcta'";
$result = $conexion->query($sql);

if ($result->num_rows == 0) {     

    $sql3="INSERT INTO question (url,correcta,alternativas) VALUES ('$url','$correcta','$alternativas')";
    if ($conexion->query($sql3) === TRUE) {
        echo "Cuenta creada con éxito!";
    } else {
        echo "Error: " . $sql3 . "<br>" . $conexion->error;
    }
    mysqli_close($conexion); 
    $Message = urlencode("Agregado correctamente.");
    header("Location: agregarPregunta.php?Message=".$Message);
    die;
}else{
    mysqli_close($conexion); 
    $Message = urlencode("Ya hay una pregunta con esa alternativa correcta.");
    header("Location: agregarPregunta.php?Message=".$Message);
    die;
}
 