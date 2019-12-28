<?php
include 'database.php';

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "SELECT url, correcta, alternativas, audio, etapa FROM question WHERE activa = 1 ORDER BY etapa";
$result = $conexion->query($sql);
$rowcount = mysqli_num_rows($result);

$sql = "SELECT * FROM astromatch_parametros_exp";
$_result_q2 = $conexion->query($sql);
$result_q2 = $_result_q2->fetch_assoc();

$pBuenas = $result_q2["pBuenas"];
$pMalas = $result_q2["pMalas"];
$pNuevas = $result_q2["pNuevas"];
$min_vel = $result_q2["min_vel"];
$max_vel = $result_q2["max_vel"];
$acel = $result_q2["acel"];
$epe = $result_q2["epe"];
$debug = $result_q2["debug"];
$p_adapt_vel = $result_q2["p_adapt_vel"];
$carril = $result_q2["carril"];
$bonus = $result_q2["bonus"];
$bonus_prob = $result_q2["bonus_prob"];

$shield_prob = $result_q2["shield_prob"];
$_100points_prob = $result_q2["_100points_prob"];
$_50points_prob = $result_q2["_50points_prob"];
$turbo_prob = $result_q2["turbo_prob"];
$multiplier_prob = $result_q2["multiplier_prob"];
$slowed_prob = $result_q2["slowed_prob"];
$zigzag_start = $result_q2["zigzag_start"];

$data = '{';
$data.= '"items":'.$rowcount.',';
$data.= '"debug":'.$debug.',';
$data.= '"p_adapt_vel":'.$p_adapt_vel.',';
$data.= '"carril":'.$carril.',';
$data.= '"bonus":'.$bonus.',';
$data.= '"bonus_prob":'.$bonus_prob.',';

$data.= '"shield_prob":'.$shield_prob.',';
$data.= '"_100points_prob":'.$_100points_prob.',';
$data.= '"_50points_prob":'.$_50points_prob.',';
$data.= '"turbo_prob":'.$turbo_prob.',';
$data.= '"multiplier_prob":'.$multiplier_prob.',';
$data.= '"slowed_prob":'.$slowed_prob.',';
$data.= '"zigzag_start":'.$zigzag_start.',';

$data.= '"pBuenas":'.$pBuenas.',';
$data.= '"pMalas":'.$pMalas.',';
$data.= '"pNuevas":'.$pNuevas.',';
$data.= '"min_vel":'.$min_vel.',';
$data.= '"max_vel":'.$max_vel.',';
$data.= '"acel":'.$acel.',';
$data.= '"wpl":'.$epe.',';
$map_index = 1;
while($row = $result->fetch_assoc())
{
    $data .= '"'.$map_index.'":{';
    $data .= '"url":"'.$row['url'].'",';
    $data .= '"audio":"'.$row['audio'].'",';
    $data .= '"correcta":"'.$row['correcta'].'",';
    $data .= '"alternativas":'.$row['alternativas'].',';
    $data .= '"etapa":'.$row['etapa'].'}';
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