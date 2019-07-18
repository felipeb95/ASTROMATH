<?php

$data = json_decode(file_get_contents('php://input'), true);
print_r($data);
/*
$rondas = "{5,2,1}-{4,2,2}-{3,2,3}";
$separado = explode("-",$rondas);
echo "largo es: ".sizeof($separado);
echo "<br>";
$rondasToJsonArray = "[";
$contadorRondas = 0;
foreach($separado as $set){
          $contadorRondas++;
          $set = trim($set,"}");
          $set = trim($set,"{");
          echo $set."<br>";
          $rondasToJsonArray .= "'$set'";
          if($contadorRondas!=3)
                    $rondasToJsonArray .= ",";
}
$rondasToJsonArray .= "]";
echo "$rondasToJsonArray";
*/
?>