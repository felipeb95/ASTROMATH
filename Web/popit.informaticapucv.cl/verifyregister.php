<?php
include 'database.php';
$grupo = $_POST['grupo'];
$colegio = $_POST['colegio'];
$curso = $_POST['curso'];
$letra = $_POST['letra'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$username = $_POST['username'];
$password = $_POST['password'];
$npassword = $_POST['npassword'];
//if(empty($user) || empty($pass)){
//header("Location: index.html");
//exit();
//}
 
$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}

$sql = "SELECT * from users where username='$username'";
$result = $conexion->query($sql);
if($password==$npassword){


    if ($result->num_rows == 0) {     
    
            $sql3="INSERT INTO users (nombre,apellido,username,password,grupo,colegio,curso,letra) VALUES ('$nombre','$apellido','$username','$password','$grupo','$colegio','$curso','$letra')";
            if ($conexion->query($sql3) === TRUE) {
                echo "Cuenta creada con éxito!";
            } else {
                echo "Error: " . $sql3 . "<br>" . $conexion->error;
            }
    }else{
        echo "Ya existe Username asociado";
    }
    mysqli_close($conexion);  
}
else {
    echo "Contraseñas distintas";
}

?>



<br>
<a href = "register.php">Crear otra cuenta</a><br>
<a href = "index.php">Volver a inicio</a>
