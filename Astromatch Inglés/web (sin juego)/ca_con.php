<?php
include 'database.php';

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "SELECT url, correcta, alternativas, audio FROM question WHERE activa = 1";
$result = $conexion->query($sql);
$rowcount = mysqli_num_rows($result);

$sql = "SELECT * FROM astromatch_parametros_con";
$_result_q2 = $conexion->query($sql);
$result_q2 = $_result_q2->fetch_assoc();

$pBuenas = $result_q2["pBuenas"];
$pMalas = $result_q2["pMalas"];
$pNuevas = $result_q2["pNuevas"];
$min_vel = $result_q2["min_vel"];
$max_vel = $result_q2["max_vel"];
$acel = $result_q2["acel"];


$data = '{';
$data.= '"items":'.$rowcount.',';
$data.= '"pBuenas":'.$pBuenas.',';
$data.= '"pMalas":'.$pMalas.',';
$data.= '"pNuevas":'.$pNuevas.',';
$data.= '"min_vel":'.$min_vel.',';
$data.= '"max_vel":'.$max_vel.',';
$data.= '"acel":'.$acel.',';
$map_index = 1;
while($row = $result->fetch_assoc())
{
    $data .= '"'.$map_index.'":{';
    $data .= '"url":"'.$row['url'].'",';
    $data .= '"audio":"'.$row['audio'].'",';
    $data .= '"correcta":"'.$row['correcta'].'",';
    $data .= '"alternativas":'.$row['alternativas'].'}';
    if($map_index != $rowcount){
        $data .= ',';
    }
    $map_index++;
}
$data.='}';

//API URL
$url = $direccion.'pa.php';

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

?>