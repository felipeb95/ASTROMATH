<hr>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>AquaMath</title>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template -->
        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
        <!-- Plugin CSS -->
        <link rel="stylesheet" href="device-mockups/device-mockups.min.css">
        <!-- Custom styles for this template -->
        <link href="css/new-age.min.css" rel="stylesheet">
    </head>
    <body id="page-top">
        <!-- Navigation -->
        
        <section class="download bg-primary text-center" id="download">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 mx-auto">
                    <h1> TEST FINALIZADO </h1>
<?php 
  	session_start();
	include 'database.php';
	
	//session_start();
	$endtime = microtime(true);
	$timediff = $endtime - $_SESSION['starttime'];
	//echo "inicio: ".$_SESSION['starttime'];
	//echo "<br>final: ".$endtime;

	function secondsToTime($s)
	{
	    $h = floor($s / 3600);
	    $s -= $h * 3600;
	    $m = floor($s / 60);
	    $s -= $m * 60;
	    //return $h.' horas, '.sprintf('%02d', $m).' minutos'.sprintf(' y %02d', $s)." segundos";
	    $strnum = "".sprintf('%2d', $m).sprintf('%02d', $s);
	    $_SESSION['tiempo'] = (int)$strnum;
	    return sprintf('%02d', $m).' minutos'.sprintf(' y %02d', $s)." segundos";
	}

	if($_SERVER['REQUEST_METHOD'] === 'POST' ){ 
	$respuestas = $_POST['item'];
	}
	
	$ejercicios = array();
	$ejercicios = $_SESSION['ejercicios'];

	$comparar = array();
	$comparar = $_SESSION['results'];

	echo "
	<table style='width:100%;border:1px solid black;'>
	<tr>
		<td align='center' style='border:1px solid black;'><b>EJERCICIO</b></td>
		<td align='center' style='border:1px solid black;'><b>TU RESPUESTA</b></td>
		<td align='center' style='border:1px solid black;'><b>SOLUCIÓN</b></td>
	</tr>";

	for($i=0;$i<sizeof($respuestas);$i++){
		echo "<tr>
		<td align='center' style='border:1px solid black;'>".$ejercicios[$i]."
		<td align='center' style='border:1px solid black;'>".$respuestas[$i]."
		<td align='center' style='border:1px solid black;'>".$comparar[$i]."
		</tr>";
	}
	echo "</table>";

	$buenas = 0;
	$malas = 0;

	for($i=0;$i<15;$i++){
		if($comparar[$i]==$respuestas[$i]){
			$buenas++;
		}else $malas++;
	} 
	//echo "<br><br>";

	echo "<br>Demoraste ".secondsToTime($timediff);
	echo "<br>Respuestas correctas: ".$buenas;
	echo "<br>Respuestas incorrectas: ".$malas;

	if ($malas>=$buenas) $score=0;
	else	$score = ($buenas-$malas)*10;
	echo "<br>Tu puntaje es: <b>".$score."</b><br>";

	if($score>$_SESSION['highscore']) {
		$sql="UPDATE users 
		SET highscore = ". $score ." 
		WHERE id = ". $_SESSION['id'] ."";
		$conn = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
		// Check connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 
	
		if ($conn->query($sql) === TRUE) {
			echo "Nueva puntuación más alta! (".$score." puntos!)";
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}

		
		$sql = "INSERT INTO control (idUser, puntaje, buenas, malas, tiempo)
		VALUES (". $_SESSION['id'] .", ". $score.", ". $buenas .", ". $malas .", ".$_SESSION['tiempo'].")";

		$conn = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
		// Check connection
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		} 

		if ($conn->query($sql) === TRUE) {
		    echo "<br>Datos guardados<br>";
		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}


?>
	<a href = "welcome.php" onmouseover="this.style.color='white';" onmouseout="this.style.color='black';" style="color:black;text-decoration: none;font-size:30" >Volver a inicio</a>
</div>
                </div>
            </div>
        </section>
    </section>
    <footer>
        <div class="container">
            <p>&copy; 2017 Start Bootstrap. All Rights Reserved.</p>
        </div>
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for this template -->
    <script src="js/new-age.min.js"></script>
</body>
