<?php

define('DB_SERVER', 'beta.inf.ucv.cl');
define('DB_USERNAME', 'fitnet');
define('DB_PASSWORD', 'p#q4LTUG');
define('DB_DATABASE', 'fitnet');

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "SELECT pBuenas, pMalas, pNuevas FROM astromatch_parametros";
$result = $conexion->query($sql);

$data = '{';
while($row = $result->fetch_assoc())
{
          $data .= '"pBuenas":"'.$row['pBuenas'].'",';
          $data .= '"pMalas":"'.$row['pMalas'].'",';
          $data .= '"pNuevas":"'.$row['pNuevas'].'"';
}
$data.='}';

//API URL
$url = 'http://localhost/pa.php';

//Initiate cURL.
$ch = curl_init($url);
 
//The JSON data.
$jsonData = $data;

//Encode the array into JSON.
$jsonDataEncoded = json_encode($jsonData);
 
//Tell cURL that we want to send a POST request.
curl_setopt($ch, CURLOPT_POST, 1);
 
//Attach our encoded JSON string to the POST fields.
curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonDataEncoded);
 
//Set the content type to application/json
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json')); 
 
//Execute the request
$result = curl_exec($ch);

$data = json_decode(file_get_contents('php://input'), true);
echo $data;
