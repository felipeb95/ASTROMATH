<?php

include 'database.php';

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "SELECT * FROM parametros_exp";
$result = $conexion->query($sql);
$data = $result->fetch_assoc();
$min_vel = $data["min_vel"];
$max_vel = $data["max_vel"];
$acel = $data["acel"];
$epe = $data["epe"];
$modo = $data["modo"];
$operaciones = $data["operaciones"];
$menorMultiplo = $data["menorMultiplo"];
$mayorMultiplo = $data["mayorMultiplo"];
$rondas = $data["rondas"];
$maxSuma = $data["maxSuma"];
$minResta = $data["minResta"];
$minAS = $data["minAS"];
$maxBS = $data["maxBS"];
$minAR = $data["minAR"];
$maxBR = $data["maxBR"];
$minAD = $data["minAD"];
$maxBD = $data["maxBD"];
$porcBuenas = $data["porcBuenas"];
$porcMalas = $data["porcMalas"];
$porcDig = $data["porcDig"];
$restoD = $data["restoD"];
$canjeS = $data["canjeS"];
$canjeR = $data["canjeR"];
$p_adapt_vel = $data["p_adapt_vel"];
$debug = $data["debug"];
$carril = $data["carril"];

$separado = explode("-",$rondas);
$rondasToJsonArray = "[";
$contadorRondas = 0;
$totalRondas = sizeof($separado);
foreach($separado as $set){
          $contadorRondas++;
          $set = trim($set,"}");
          $set = trim($set,"{");
          $rondasToJsonArray .= '"'.$set.'"';
          if($contadorRondas!=$totalRondas)
                    $rondasToJsonArray .= ",";
}
$rondasToJsonArray .= "]";

//API URL
$url = $direccion.'parametros.php';

//Initiate cURL.
$ch = curl_init($url);
 
$data = '{';
$data.= '"menorMultiplo":'.$menorMultiplo.',';
$data.= '"mayorMultiplo":'.$mayorMultiplo.',';
$data.= '"maxSuma":'.$maxSuma.',';
$data.= '"minResta":'.$minResta.',';
$data.= '"minAS":'.$minAS.',';
$data.= '"maxBS":'.$maxBS.',';
$data.= '"minAR":'.$minAR.',';
$data.= '"maxBR":'.$maxBR.',';
$data.= '"minAD":'.$minAD.',';
$data.= '"maxBD":'.$maxBD.',';
$data.= '"porcBuenas":'.$porcBuenas.',';
$data.= '"porcMalas":'.$porcMalas.',';
$data.= '"porcDig":'.$porcDig.',';
$data.= '"restoD":'.$restoD.',';
$data.= '"canjeR":'.$canjeR.',';
$data.= '"canjeS":'.$canjeS.',';
$data.= '"p_adapt_vel":'.$p_adapt_vel.',';
$data.= '"debug":'.$debug.',';
$data.= '"rondas":'.$rondasToJsonArray.',';
$data.= '"min_vel":'.$min_vel.',';
$data.= '"max_vel":'.$max_vel.',';
$data.= '"acel":'.$acel.',';
$data.= '"epe":'.$epe.',';
$data.= '"modo":'.$modo.',';
$data.= '"carril":'.$carril.',';
$data .= '"operaciones":"'.$operaciones.'"}';
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