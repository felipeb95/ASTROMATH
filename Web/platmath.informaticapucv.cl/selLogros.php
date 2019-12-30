<?php
include 'database.php';
$con = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
$query = "SELECT * FROM logros ORDER BY id";
$resultados = mysqli_query($con, $query);

$output = array();

if(mysqli_num_rows($resultados) > 0)
{
	$resultset = $resultados->fetch_array(MYSQLI_ASSOC);
	while($row = mysqli_fetch_array($resultados))
	{
		$data[] = array("id"=>$row['id'],"descripcion"=>$row['descripcion'],"tipo"=>$row['tipo'],"requisito"=>$row['requisito']);
		$output[]= $row;
	}
}
?>