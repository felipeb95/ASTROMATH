<?php
include 'database.php';
$pNuevas = $_POST['pNuevas'];
$pBuenas = $_POST['pBuenas'];
$pMalas = $_POST['pMalas'];
$min_vel = $_POST['min_vel'];
$max_vel = $_POST['max_vel'];
$acel = $_POST['acel'];
$grupo = $_POST['grupo'];
$epe = $_POST['epe'];
$p_adapt_vel = $_POST["p_adapt_vel"];
$debug = $_POST["debug"];
$carril = $_POST["carril"];
$bonus = $_POST["bonus"];
$bonus_prob = $_POST["bonus_prob"];

$shield_prob = $_POST["shield_prob"];
$_100points_prob = $_POST["_100points_prob"];
$_50points_prob = $_POST["_50points_prob"];
$turbo_prob = $_POST["turbo_prob"];
$multiplier_prob = $_POST["multiplier_prob"];
$slowed_prob = $_POST["slowed_prob"];
$zigzag_start = $_POST["zigzag_start"];

$suma=$pNuevas+$pBuenas+$pMalas;

$sumaBonus=$shield_prob+$_100points_prob+$_50points_prob+$turbo_prob+$multiplier_prob+$slowed_prob;
if($sumaBonus!=100){
    $Message = urlencode("Suma de porcentajes de bonus debe ser igual a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

if($max_vel<=$min_vel){
    $Message = urlencode("Máxima velocidad debe ser mayor a la mínima.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}
if($suma!=100){
    $Message = urlencode("Suma de porcentajes debe ser igual a cien.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    die;
}

$pBuenas = $pBuenas/100;
$pMalas = $pMalas/100;
$pNuevas = $pNuevas/100;
$min_vel = $min_vel*-1;
$max_vel = $max_vel*-1;
$p_adapt_vel = $p_adapt_vel/100;
$bonus_prob = $bonus_prob/100;

$shield_prob = $shield_prob/100;
$_100points_prob = $_100points_prob/100;
$_50points_prob = $_50points_prob/100;
$turbo_prob = $turbo_prob/100;
$multiplier_prob = $multiplier_prob/100;
$slowed_prob = $slowed_prob/100;

$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
if($grupo==0){
    $sql = "UPDATE astromatch_parametros_con
        SET pBuenas='$pBuenas', pMalas='$pMalas', pNuevas='$pNuevas', min_vel='$min_vel', max_vel='$max_vel', acel='$acel', epe='$epe', debug='$debug', p_adapt_vel='$p_adapt_vel', carril='$carril', bonus='$bonus', bonus_prob='$bonus_prob', shield_prob='$shield_prob', _100points_prob='$_100points_prob', _50points_prob='$_50points_prob', turbo_prob='$turbo_prob', multiplier_prob='$multiplier_prob', slowed_prob='$slowed_prob', zigzag_start='$zigzag_start'";

}
if($grupo==1){
    $sql = "UPDATE astromatch_parametros_exp
        SET pBuenas='$pBuenas', pMalas='$pMalas', pNuevas='$pNuevas', min_vel='$min_vel', max_vel='$max_vel', acel='$acel', epe='$epe', debug='$debug', p_adapt_vel='$p_adapt_vel', carril='$carril', bonus='$bonus', bonus_prob='$bonus_prob', shield_prob='$shield_prob', _100points_prob='$_100points_prob', _50points_prob='$_50points_prob', turbo_prob='$turbo_prob', multiplier_prob='$multiplier_prob', slowed_prob='$slowed_prob', zigzag_start='$zigzag_start'";

}
if ($conexion->query($sql) === TRUE) {
    $Message = urlencode("Actualizado con éxito.");
    header("Location: config.php?Message=".$Message."&grupo=".$grupo);
    exit();
} 
mysqli_close($conexion); 


?>