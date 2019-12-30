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

$sql = "SELECT * FROM users WHERE id=".$user;

$result = $conexion->query($sql);
while($row = $result->fetch_assoc()) {
    $rondas = $row["nRondas"];
    $highscore = $row["highscore"];
}


$sql="INSERT INTO astromath_partida (idUser, correctas, incorrectas, puntaje, ejercicios, faciles, medios, dificiles) VALUES ('$user','$correctas','$incorrectas','$puntaje','$ejercicios','$facilesToString','$mediosToString','$dificilesToString')";
if ($conexion->query($sql) === TRUE) {
    //QUERY EXITOSA
    $ultimaIdExperimental = $conexion->insert_id;

    $objEjercicios = json_decode($jsonEjercicios,true);
    $rondasCount  = count($objEjercicios);

    for ($x = 1; $x <= $rondasCount; $x++) {

        $a = $objEjercicios[$x]["a"];
        $b = $objEjercicios[$x]["b"];
        $correctAnswer = $objEjercicios[$x]["correctAnswer"];
        $chosenAnswer = $objEjercicios[$x]["chosenAnswer"];
        $state = $objEjercicios[$x]["state"];
        $firstA = $objEjercicios[$x]["firstA"];
        $firstB = $objEjercicios[$x]["firstB"];
        $exerciseNumber = $objEjercicios[$x]["exerciseNumber"];
        $subExerciseNumber = $objEjercicios[$x]["subExerciseNumber"];
        $type = $objEjercicios[$x]["type"];
        
        $sqlEjercicios = "INSERT INTO popit_ejercicio (a, b, chosenAnswer, idPartida, firstA, firstB, answerState, exerciseNumber, subExerciseNumber, exerciseType) VALUES ('$a','$b','$chosenAnswer','$ultimaIdExperimental','$firstA','$firstB','$state','$exerciseNumber','$subExerciseNumber','$type')";
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
if($nRondas>$rondas) {
    $sql3="UPDATE users 
    SET nRondas = ". $nRondas ." 
    WHERE id = ". $user ."";


    if ($conexion->query($sql3) === TRUE) {
        echo "Datos guardados";
    } else {
        echo "Error: " . $sql3 . "<br>" . $conexion->error;
    }
    
}

mysqli_close($conexion); 
?>