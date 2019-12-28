<?php

include 'database.php';
//session_start();
if(!isset($_COOKIE['id'])){
    $idBuscado = 337;
}
else $idBuscado = $_COOKIE['id'];

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sql = "SELECT * FROM parametros_con";
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
$bonus = $data["bonus"];
$bonus_prob = $data["bonus_prob"];
$carril = $data["carril"];

$shield_prob = $data["shield_prob"];
$_100points_prob = $data["_100points_prob"];
$_50points_prob = $data["_50points_prob"];
$turbo_prob = $data["turbo_prob"];
$multiplier_prob = $data["multiplier_prob"];
$slowed_prob = $data["slowed_prob"];
$zigzag_start = $data["zigzag_start"];


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

$sql = "SELECT stringJson,id FROM users";
$result = $conexion->query($sql);
$user = array();
$suma = array();
$cantidad = array();
$user2 = '[';
$suma2 = '[';
$cantidad2 = '[';
$minA = $menorMultiplo;
$maxB = $mayorMultiplo;
for($i = $minA; $i<=$maxB;$i++){
    for($j = $minA; $j<=$maxB;$j++){
        $suma[$i][$j] = 0;
        $cantidad[$i][$j] = 0;
        $user[$i][$j] = -1;
        if($i == $minA && $j==$minA) $user[$i][$j] = 1;
        if($i == $maxB && $j==$maxB) $user[$i][$j] = 0;
    }
}
while($row = $result->fetch_assoc()) {
    $stringJson = $row["stringJson"];
    $id = $row["id"];
    if($stringJson!=""){
        $stringJson = str_replace("?", "", $stringJson);
        $obj = json_decode($stringJson,true);
        $datos = $obj['user'];
        $largo = count($datos);
        for($i = 0; $i<$largo;$i++){
            if($id == $idBuscado){
                $user[(int)$datos[$i]['a']][(int)$datos[$i]['b']] = (int)$datos[$i]['r'];
            }   
            if((int)$datos[$i]['r']>=0) {
                $suma[(int)$datos[$i]['a']][(int)$datos[$i]['b']] += (int)$datos[$i]['r'];
                $cantidad[(int)$datos[$i]['a']][(int)$datos[$i]['b']] += 1;
            }
        }
    }   
}


for($i = $minA; $i<=$maxB;$i++){
    $user2.='"';
    $suma2.='"';
    $cantidad2.='"';
    for($j = $minA; $j<=$maxB;$j++){       
        $user2 .= $user[$i][$j];
        if($j<$maxB) $user2.=',';
        $suma2 .= $suma[$i][$j];
        if($j<$maxB) $suma2.=',';
        $cantidad2 .= $cantidad[$i][$j];
        if($j<$maxB) $cantidad2.=',';
    }
    if($i==$maxB) $user2.='"';
    else $user2.='",';
    if($i==$maxB) $suma2.='"';
    else $suma2.='",';
    if($i==$maxB) $cantidad2.='"';
    else $cantidad2.='",';
}
$user2.=']';
$suma2.=']';
$cantidad2.=']';
$jsonUser = json_encode($user);
$jsonSuma = json_encode($suma);
$jsonCantidad = json_encode($cantidad);


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
$data.= '"bonus":'.$bonus.',';
$data.= '"bonus_prob":'.$bonus_prob.',';

$data.= '"shield_prob":'.$shield_prob.',';
$data.= '"_100points_prob":'.$_100points_prob.',';
$data.= '"_50points_prob":'.$_50points_prob.',';
$data.= '"turbo_prob":'.$turbo_prob.',';
$data.= '"multiplier_prob":'.$multiplier_prob.',';
$data.= '"slowed_prob":'.$slowed_prob.',';
$data.= '"zigzag_start":'.$zigzag_start.',';

$data.= '"rondas":'.$rondasToJsonArray.',';
$data.= '"min_vel":'.$min_vel.',';
$data.= '"max_vel":'.$max_vel.',';
$data.= '"carril":'.$carril.',';
$data.= '"acel":'.$acel.',';
$data.= '"epe":'.$epe.',';
$data.= '"modo":'.$modo.',';
$data.= '"userirt":'.$user2.',';
$data.= '"sumairt":'.$suma2.',';
$data.= '"cantidadirt":'.$cantidad2.',';
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