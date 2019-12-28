<?php

include 'database.php';
$puntaje = $_POST['puntaje'];
$correctas = $_POST['correctas'];
$incorrectas = $_POST['incorrectas'];
$ejercicios = $_POST['ejercicios'];
$jsonEjercicios = $_POST['jsonEjercicios'];
session_start();
$user = $_SESSION['id'];
//INSERT DATA

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}

$sql = "SELECT * FROM plat_users WHERE id=".$user;


$result = $conexion->query($sql);
while($row = $result->fetch_assoc()) {
    $highscore = $row["highscore"];
}


$sql="INSERT INTO plat_partida (idUser, correctas, incorrectas, puntaje, ejercicios) VALUES ('$user','$correctas','$incorrectas','$puntaje','$ejercicios')";
if ($conexion->query($sql) === TRUE) {
    //QUERY EXITOSA
    $ultimaIdExperimental = $conexion->insert_id;

    $objEjercicios = json_decode($jsonEjercicios,true);
    $rondasCount  = count($objEjercicios);

    for ($x = 1; $x <= $rondasCount; $x++) {

        $a = $objEjercicios[$x]["a"];
        $b = $objEjercicios[$x]["b"];
        $r = $objEjercicios[$x]["r"];
        $respuesta = $objEjercicios[$x]["respuesta"];
        $estado = $objEjercicios[$x]["estado"];
        $etapa = $objEjercicios[$x]["etapa"];
        $origen = $objEjercicios[$x]["origen"];
        $operacion = $objEjercicios[$x]["operacion"];

        $sqlEjercicios = "INSERT INTO plat_ejercicio (a, b, r, idPartida, respuesta, estado, etapa, origen, operacion) VALUES ('$a','$b','$r','$ultimaIdExperimental','$respuesta','$estado','$etapa','$origen','$operacion')";
        if ($conexion->query($sqlEjercicios) === TRUE) {
            echo "Success: " . $sql . "<br>" . $conexion->error;
        }else {
            echo "Error: " . $sql . "<br>" . $conexion->error;
        }   
    }
} else {
    echo "Error: " . $sql . "<br>" . $conexion->error;
}



if($puntaje>$highscore) {
    $sql2="UPDATE users 
    SET highscore = ". $puntaje ." 
    WHERE id = ". $user ."";


    if ($conexion->query($sql2) === TRUE) {
        echo "Datos guardados";
    } else {
        echo "Error: " . $sql2 . "<br>" . $conexion->error;
    }
    
}

mysqli_close($conexion); 
?>