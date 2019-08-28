<?php

include '../database.php';
$puntaje = $_POST['puntaje'];
$correctas = $_POST['correctas'];
$incorrectas = $_POST['incorrectas'];
$ejercicios = $_POST['ejercicios'];
$nRondas = $_POST['nRondas'];
$jsonEjercicios = $_POST['jsonEjercicios'];
$jsonExtras = $_POST['jsonExtras'];
session_start();
$user = $_SESSION['id'];
//INSERT DATA

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}



$objExtras = json_decode($jsonExtras, true);
$faciles = $objExtras["faciles"];
$medios = $objExtras["medios"];
$dificiles = $objExtras["dificiles"];
$facilesToString = '{}';
$mediosToString = '{}';
$dificilesToString = '{}';

if($faciles != 'null'){
    $facilesToString = "{".implode(",",$faciles)."}";
}

if($medios != 'null'){
    $mediosToString = "{".implode(",",$medios)."}";
}

if($dificiles != 'null'){
    $dificilesToString = "{".implode(",",$dificiles)."}";
}

$sql="INSERT INTO astromath_partida (idUser, correctas, incorrectas, puntaje, ejercicios, faciles, medios, dificiles) VALUES ('$user','$correctas','$incorrectas','$puntaje','$ejercicios','$facilesToString','$mediosToString','$dificilesToString')";
if ($conexion->query($sql) === TRUE) {
    //QUERY EXITOSA
    $ultimaIdExperimental = $conexion->insert_id;

    $objEjercicios = json_decode($jsonEjercicios,true);
    $rondasCount  = count($objEjercicios);

    for ($x = 1; $x <= $rondasCount; $x++) {

        $a = $objEjercicios[$x]["multiplo_a"];
        $b = $objEjercicios[$x]["multiplo_b"];
        $r = $objEjercicios[$x]["ultima_respuesta"];
        $segundos = $objEjercicios[$x]["tiempo_respuesta"];
        $cantidad_intentos = $objEjercicios[$x]["total_intentos"];
        $intentos = $objEjercicios[$x]["intentos"];
        $intentosCount = count($intentos);
        $estado = $objEjercicios[$x]["estado_respuesta"];
        $etapa = $objEjercicios[$x]["etapa"];
        $origen = $objEjercicios[$x]["origen"];
        $operacion = $objEjercicios[$x]["operacion"];
        
        $sqlEjercicios = "INSERT INTO astromath_ejercicio (a, b, r, idPartida, segundos, intentos, estado, etapa, origen, operacion) VALUES ('$a','$b','$r','$ultimaIdExperimental','$segundos','$cantidad_intentos','$estado','$etapa','$origen','$operacion')";
        if ($conexion->query($sqlEjercicios) === TRUE) {
            //QUERY EXITOSA
            $ultimaIdEjercicios = $conexion->insert_id;
            if($intentosCount>0){
                for($i = 1; $i <= count($intentos);$i++){
                    $sqlIntentos = "INSERT INTO astromath_intento (idEjercicio, intento) VALUES ('$ultimaIdEjercicios', '$intentos[$i]')";
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