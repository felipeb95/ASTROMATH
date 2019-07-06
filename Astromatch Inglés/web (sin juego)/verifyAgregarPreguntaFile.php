<?php
include 'database.php';
//$url = $_POST['url'];
$correcta = $_POST['correcta'];
$alt1 = $_POST['alt1'];
$alt2 = $_POST['alt2'];
$alt3 = $_POST['alt3'];
$alt4 = $_POST['alt4'];
$alternativas = '["'.$alt1.'","'.$alt2.'","'.$alt3.'","'.$alt4.'"]';

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}

$sql = "SELECT * from question where correcta='$correcta'";
$result = $conexion->query($sql);

if ($result->num_rows == 0) {     
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image
    if(isset($_POST["submit"])) {
        $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
        if($check !== false) {
            $uploadOk = 1;
        } else {
            $mes = "Archivo no es una imagen.";
            $uploadOk = 0;
        }
    }
    // Check if file already exists
    if (file_exists($target_file)) {
        $mes = "Ya existe una imagen con ese nombre.";
        $uploadOk = 0;
    }
    // Check file size
    if ($_FILES["fileToUpload"]["size"] > 500000) {
        $mes = "Tamaño imagen muy grande.";
        $uploadOk = 0;
    }
    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
        $mes = "Solo JPG, JPEG, PNG & GIF.";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        $Message = urlencode($mes);
        header("Location: agregarPregunta.php?Message=".$Message);
        die;
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            $url = $direccion."uploads/";
            $url = $url . basename( $_FILES["fileToUpload"]["name"]);        
        } else {
            $Message = urlencode("Ocurrío un error al subir la imagen.");
            header("Location: agregarPregunta.php?Message=".$Message);
            die;
        }
    }

    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["audioToUpload"]["name"]);
    $uploadOk = 1;
    $audioFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Check if file already exists
    if (file_exists($target_file)) {
        $mes = "Ya existe un audio con ese nombre.";
        $uploadOk = 0;
    }
    // Check file size
    if ($_FILES["audioToUpload"]["size"] > 500000) {
        $mes = "Tamaño audio muy grande.";
        $uploadOk = 0;
    }
    // Allow certain file formats
    if($audioFileType != "ogg") {
        $mes = "Solo OGG.";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        $Message = urlencode($mes);
        header("Location: agregarPregunta.php?Message=".$Message);
        die;
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["audioToUpload"]["tmp_name"], $target_file)) {
            $audio = $direccion."uploads/";
            $audio = $audio . basename( $_FILES["audioToUpload"]["name"]);        
        } else {
            $Message = urlencode("Ocurrío un error al subir el audio.");
            header("Location: agregarPregunta.php?Message=".$Message);
            die;
        }
    }



    $sql3="INSERT INTO question (url,correcta,alternativas,audio) VALUES ('$url','$correcta','$alternativas','$audio')";
    if ($conexion->query($sql3) === TRUE) {
        $Message = urlencode("Agregado correctamente.");
        header("Location: agregarPregunta.php?Message=".$Message);
        die;
    } else {
        $Message = urlencode("Error al guardar en base de datos.");
        header("Location: agregarPregunta.php?Message=".$Message);
        die;
    }
    mysqli_close($conexion); 
    
}else{
    mysqli_close($conexion); 
    $Message = urlencode("Ya hay una pregunta con esa alternativa correcta.");
    header("Location: agregarPregunta.php?Message=".$Message);
    die;
}
 