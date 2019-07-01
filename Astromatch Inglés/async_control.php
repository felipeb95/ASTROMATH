<?php

include '../database.php';
$puntaje = $_POST['puntaje'];
$correctas = $_POST['correctas'];
$incorrectas = $_POST['incorrectas'];
$ejercicios = $_POST['ejercicios'];
$nRondas = $_POST['nRondas'];
$jsonEjercicios = $_POST['jsonEjercicios'];
session_start();
$user = $_SESSION['id'];
//INSERT DATA

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}

$sql="INSERT INTO astromatch_experimental (idUser, correctas, incorrectas, puntaje, ejercicios) VALUES ('$user','$correctas','$incorrectas','$puntaje','$ejercicios')";
if ($conexion->query($sql) === TRUE) {
    //QUERY EXITOSA
    $ultimaIdExperimental = $conexion->insert_id;

    $objEjercicios = json_decode($jsonEjercicios,true);
    $rondasCount  = count($objEjercicios);

    for ($x = 1; $x <= $rondasCount; $x++) {

        $palabra = $objEjercicios[$x]["palabra"];
        $segundos = $objEjercicios[$x]["tiempo_respuesta"];
        $cantidad_intentos = $objEjercicios[$x]["total_intentos"];
        $intentos = $objEjercicios[$x]["intentos"];
        $estado = $objEjercicios[$x]["estado_respuesta"];
        $origen = $objEjercicios[$x]["origen"];
        $intentosCount = count($intentos);

        $sqlEjercicios = "INSERT INTO astromatch_teste (palabra, segundos, idPartida, intentos, estado, origen) VALUES ('$palabra','$segundos','$ultimaIdExperimental','$cantidad_intentos','$estado','$origen')";
        if ($conexion->query($sqlEjercicios) === TRUE) {
            //QUERY EXITOSA
            $ultimaIdEjercicios = $conexion->insert_id;
            if($intentosCount>0){
                for($i = 1; $i <= $intentosCount;$i++){
                    $sqlIntentos = "INSERT INTO astromatch_intentose (idEjercicio, intento) VALUES ('$ultimaIdEjercicios', '$intentos[$i]')";
                    if($conexion->query($sqlIntentos) == TRUE){
                        //QUERY EXITOSA
                        echo "Datos guardados";
                    }
                    else {
                        echo "Error: " . $sql . "<br>" . $conexion->error;
                    }
                }
            }
            else echo "&emsp; <b>no hay intentos para almacenar en BD</b><br>";

        }else {
            echo "Error: " . $sql . "<br>" . $conexion->error;
        }   
    }
} else {
    echo "Error: " . $sql . "<br>" . $conexion->error;
}



if($puntaje>$_SESSION['highscore']) {
    $sql2="UPDATE users 
    SET highscore = ". $puntaje ." 
    WHERE id = ". $_SESSION['id'] ."";


    if ($conexion->query($sql2) === TRUE) {
        echo "Datos guardados";
    } else {
        echo "Error: " . $sql2 . "<br>" . $conexion->error;
    }
    
}
if($nRondas>$_SESSION['nRondas']) {
    $sql3="UPDATE users 
    SET nRondas = ". $nRondas ." 
    WHERE id = ". $_SESSION['id'] ."";


    if ($conexion->query($sql3) === TRUE) {
        echo "Datos guardados";
    } else {
        echo "Error: " . $sql3 . "<br>" . $conexion->error;
    }
    
}

mysqli_close($conexion); 
?>