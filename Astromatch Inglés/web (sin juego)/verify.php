<?php
include 'database.php';

$user = $_POST['username'];
$pass = $_POST['password'];

if(empty($user) || empty($pass)){
header("Location: index.php");
exit();
}
$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("NO CONECTA: " . $conexion->connect_error);
}

$sql = "SELECT * from astromatch_users where username='$user'";

$result = $conexion->query($sql);

if ($result->num_rows > 0) {     
    $row = $result->fetch_array(MYSQLI_ASSOC);
    if ($pass==$row['password']) { 
        session_start();
        $_SESSION['user'] = $user;
        $_SESSION['grupo'] = $row['grupo'];
        $_SESSION['nombre'] = $row['nombre'];
        $_SESSION['apellido'] = $row['apellido'];
        $_SESSION['id'] = $row['id'];
        $_SESSION['highscore'] = $row['highscore'];
        $_SESSION['colegio'] = $row['colegio'];
        $_SESSION['curso'] = $row['curso'];
        $_SESSION['letra'] = $row['letra'];
        $_SESSION['promedio'] = $row['promedio'];
        $_SESSION['nLogin'] = $row['nLogin'];
        $_SESSION['nRondas'] = $row['nRondas'];

        $sql2="UPDATE astromatch_users 
        SET nLogin = nLogin + 1 
        WHERE id = ". $_SESSION['id'] ."";
        $conexion->query($sql2);
        if($row['grupo']==1 || $row['grupo']==0){
            header("Location: perfilExp.php");
        }
        else{
            if($row['grupo']==2){
                header("Location: superAdmin.php");
            }
            else header("Location: game-v1");
        }
    }else{
        header("Location: index.php");
    }
}else{
    header("Location: index.php");
    mysqli_close($conexion);  
}
?>