<?php
session_start();
include 'database.php';

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "SELECT * FROM luxmath_parametros";
$result = $conexion->query($sql);
$data = $result->fetch_assoc();
$menorMultiplo = $data["menorMultiplo"];
$mayorMultiplo = $data["mayorMultiplo"];
$porcBuenas = $data["porcBuenas"];
$porcMalas = $data["porcMalas"];
$debug = $data["debug"];
$vidas = $data["vidas"];
$feedback = $data["feedback"];
$cMin = $data["cMin"];
$cMax = $data["cMax"];
$cRango = $data["cRango"];
$vMin = $data["vMin"];
$vMax = $data["vMax"];
$vRango = $data["vRango"];
$multi = $data["multi"];
$slowmo = $data["slowmo"];
$freeze = $data["freeze"];
$correcta = $data["correcta"];
$reversa = $data["reversa"];
$bonusprob = $data["bonusprob"];
$acel = $data["acel"];
$cPelotas = $data["cPelotas"];
$cErrores = $data["cErrores"];
$vInicial = $data["vInicial"];

if(!isset($_SESSION['grupo'])){
    $grupo = 1;
}
else $grupo = $_SESSION['grupo'];

//API URL
$url = $direccion.'parametros.php';

//Initiate cURL.
$ch = curl_init($url);

$data = '{';
$data.= '"menorMultiplo":'.$menorMultiplo.',';
$data.= '"mayorMultiplo":'.$mayorMultiplo.',';
$data.= '"grupo":'.$grupo.',';
$data.= '"porcBuenas":'.$porcBuenas.',';
$data.= '"porcMalas":'.$porcMalas.',';
$data.= '"debug":'.$debug.',';
$data.= '"vidas":'.$vidas.',';
$data.= '"feedback":'.$feedback.',';
$data.= '"cMin":'.$cMin.',';
$data.= '"cMax":'.$cMax.',';
$data.= '"cRango":'.$cRango.',';
$data.= '"multi":'.$multi.',';
$data.= '"slowmo":'.$slowmo.',';
$data.= '"freeze":'.$freeze.',';
$data.= '"correcta":'.$correcta.',';
$data.= '"reversa":'.$reversa.',';
$data.= '"bonusprob":'.$bonusprob.',';
$data.= '"acel":'.$acel.',';
$data.= '"cErrores":'.$cErrores.',';
$data.= '"cPelotas":'.$cPelotas.',';
$data.= '"vInicial":'.$vInicial.',';
$data.= '"vMin":'.$vMin.',';
$data.= '"vMax":'.$vMax.',';
$data .= '"vRango":'.$vRango.'}';
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