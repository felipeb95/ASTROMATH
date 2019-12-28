<?php
include "perfilAlumno.php";
$con = mysqli_connect('localhost', 'root', '', 'fitnetprueba');
$query = "SELECT id, highscore, nombre, apellido, colegio FROM users WHERE id=".$idAlumno." ORDER BY highscore DESC";
$result = mysqli_query($con, $query);

$output = array();

if(mysqli_num_rows($result) > 0)
{
	while($row = mysqli_fetch_array($result))
	{
		$data[] = array("id"=>$row['id'],"highscore"=>$row['highscore'],"nombre"=>$row['nombre'],"apellido"=>$row['apellido'],"colegio"=>$row['colegio']);
		$output[]= $row;
	}
}
?>