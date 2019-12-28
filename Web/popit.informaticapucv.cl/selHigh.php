<?php

include 'database.php';
session_start();
$grupo = $_SESSION['grupo'];
$con = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
$query = "SELECT * FROM popit_users WHERE  id>3  ORDER BY highscore DESC";
$result = mysqli_query($con, $query);

$output = array();

if(mysqli_num_rows($result) > 0)
{
	while($row = mysqli_fetch_array($result))
	{
		$data[] = array("id"=>$row['id'],"highscore"=>$row['highscore'],"nombre"=>$row['nombre']." ".$row['apellido'],"apellido"=>$row['apellido'],"colegio"=>$row['colegio'],"curso"=>$row['curso'],"letra"=>$row['letra']);
		$output[]= $row;
	}
}
echo json_encode($data);
?>