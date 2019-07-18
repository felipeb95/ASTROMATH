<?php
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

include 'database.php';

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

$sheet->setTitle("Grupo Experimental");
$conexion = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
if ($conexion->connect_error) {
    die("La conexion falló: " . $conexion->connect_error);
}
$sheet->getColumnDimension('A')->setWidth(20);
$sheet->getColumnDimension('B')->setWidth(15);
$sheet->getColumnDimension('C')->setWidth(15);
$sheet->getColumnDimension('D')->setWidth(15);
$sheet->getColumnDimension('E')->setWidth(15);
$sheet->getColumnDimension('F')->setWidth(15);
$sheet->getColumnDimension('G')->setWidth(15);
$sheet->getColumnDimension('H')->setWidth(15);
$sheet->getColumnDimension('I')->setWidth(15);
$sheet->getColumnDimension('J')->setWidth(15);
$sheet->getColumnDimension('K')->setWidth(15);
$sheet->getColumnDimension('L')->setWidth(15);
$sheet->getColumnDimension('M')->setWidth(15);
$sheet->getColumnDimension('N')->setWidth(15);
$sheet->getColumnDimension('O')->setWidth(15);
$sheet->getColumnDimension('P')->setWidth(15);
$sheet->getColumnDimension('Q')->setWidth(15);
$sheet->setCellValue('A1', 'NOMBRE');
$sheet->setCellValue('B1', 'CORRECTAS');
$sheet->setCellValue('C1', 'INCORRECTAS');
$sheet->setCellValue('D1', 'PUNTAJE');
$sheet->setCellValue('E1', 'EJERCICIOS');
$sheet->setCellValue('F1', 'FECHA');
$sheet->setCellValue('G1', 'FACILES');
$sheet->setCellValue('H1', 'MEDIOS');
$sheet->setCellValue('I1', 'DIFICILES');
$sheet->setCellValue('J1', 'OPERACION');
$sheet->setCellValue('K1', 'RESPUESTA');
$sheet->setCellValue('L1', 'Nº INTENTOS');
$sheet->setCellValue('M1', 'SEGUNDOS');
$sheet->setCellValue('N1', 'ESTADO');
$sheet->setCellValue('O1', 'ETAPA');
$sheet->setCellValue('P1', 'ORIGEN');
$sheet->setCellValue('Q1', 'INTENTOS');
$sheet->getStyle('A1:Q1')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('bababa');
$i=2;
$aux=0;
$aux2=0;
$aux3=0;
$aux4=0;
$sql="SELECT * FROM users WHERE grupo=1";
$result = $conexion->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $sheet->setCellValue('A'.$i.'', $row["nombre"]." ".$row["apellido"]);
        $sheet->getStyle('A'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('efed5d');
        $idUser = $row["id"];
        $sql2="SELECT * FROM experimental WHERE idUser='$idUser'";
        $result2 = $conexion->query($sql2);
        while($row2 = $result2->fetch_assoc()) {
            $sheet->setCellValue('B'.$i.'', $row2["correctas"]);
            $sheet->setCellValue('C'.$i.'', $row2["incorrectas"]);
            $sheet->setCellValue('D'.$i.'', $row2["puntaje"]);
            $sheet->setCellValue('E'.$i.'', $row2["ejercicios"]);
            $sheet->setCellValue('F'.$i.'', $row2["hora"]);
            $sheet->setCellValue('G'.$i.'', $row2["faciles"]);
            $sheet->setCellValue('H'.$i.'', $row2["medios"]);
            $sheet->setCellValue('I'.$i.'', $row2["dificiles"]);
            $sheet->getStyle('B'.$i.':I'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('5cefc5');
            $idPartida = $row2["id"];
            $sql3="SELECT * FROM teste WHERE idPartida='$idPartida'";
            $result3 = $conexion->query($sql3);
            while($row3 = $result3->fetch_assoc()) {
                $sheet->setCellValue('J'.$i.'', $row3["a"]."x".$row3["b"]);
                $sheet->setCellValue('K'.$i.'', $row3["r"]);
                $sheet->setCellValue('L'.$i.'', $row3["intentos"]);
                $sheet->setCellValue('M'.$i.'', $row3["segundos"]);
                $sheet->setCellValue('N'.$i.'', $row3["estado"]);
                $sheet->setCellValue('O'.$i.'', $row3["etapa"]);
                $sheet->setCellValue('P'.$i.'', $row3["origen"]);
                $sheet->getStyle('J'.$i.':P'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('ef5c96');
                $idEjercicio = $row3["id"];
                $sql4="SELECT * FROM intentose WHERE idEjercicio='$idEjercicio'";
                $result4 = $conexion->query($sql4);
                while($row4 = $result4->fetch_assoc()) {
                    $sheet->setCellValue('Q'.$i.'', $row4["intento"]);
                    $sheet->getStyle('Q'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('CD9184');
                    $i++;
                    $aux=1;
                }
                if($aux==0){
                    $i++;
                    $aux2=1;
                }
                $aux=0;
                
            }
            if($aux2==0){
                $i++;
                $aux3=1;
            }
            $aux2=0;
        }
        if($aux3==0){
            $i++;   
        }
        $aux3=0;
        
    }
}


$spreadsheet->createSheet();
$spreadsheet->setActiveSheetIndex(1);
$sheet = $spreadsheet->getActiveSheet();
$sheet->setTitle("Grupo Control");

$sheet->getColumnDimension('A')->setWidth(20);
$sheet->getColumnDimension('B')->setWidth(15);
$sheet->getColumnDimension('C')->setWidth(15);
$sheet->getColumnDimension('D')->setWidth(15);
$sheet->getColumnDimension('E')->setWidth(15);
$sheet->getColumnDimension('F')->setWidth(15);
$sheet->getColumnDimension('G')->setWidth(15);
$sheet->getColumnDimension('H')->setWidth(15);
$sheet->getColumnDimension('I')->setWidth(15);
$sheet->getColumnDimension('J')->setWidth(15);
$sheet->getColumnDimension('K')->setWidth(15);
$sheet->getColumnDimension('L')->setWidth(15);
$sheet->getColumnDimension('M')->setWidth(15);
$sheet->getColumnDimension('N')->setWidth(15);
$sheet->getColumnDimension('O')->setWidth(15);
$sheet->getColumnDimension('P')->setWidth(15);
$sheet->getColumnDimension('Q')->setWidth(15);
$sheet->setCellValue('A1', 'NOMBRE');
$sheet->setCellValue('B1', 'CORRECTAS');
$sheet->setCellValue('C1', 'INCORRECTAS');
$sheet->setCellValue('D1', 'PUNTAJE');
$sheet->setCellValue('E1', 'EJERCICIOS');
$sheet->setCellValue('F1', 'FECHA');
$sheet->setCellValue('G1', 'FACILES');
$sheet->setCellValue('H1', 'MEDIOS');
$sheet->setCellValue('I1', 'DIFICILES');
$sheet->setCellValue('J1', 'OPERACION');
$sheet->setCellValue('K1', 'RESPUESTA');
$sheet->setCellValue('L1', 'Nº INTENTOS');
$sheet->setCellValue('M1', 'SEGUNDOS');
$sheet->setCellValue('N1', 'ESTADO');
$sheet->setCellValue('O1', 'ETAPA');
$sheet->setCellValue('P1', 'ORIGEN');
$sheet->setCellValue('Q1', 'INTENTOS');
$sheet->getStyle('A1:Q1')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('bababa');
$i=2;
$aux=0;
$aux2=0;
$aux3=0;
$aux4=0;
$sql="SELECT * FROM users WHERE grupo=0";
$result = $conexion->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $sheet->setCellValue('A'.$i.'', $row["nombre"]." ".$row["apellido"]);
        $sheet->getStyle('A'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('efed5d');
        $idUser = $row["id"];
        $sql2="SELECT * FROM control WHERE idUser='$idUser'";
        $result2 = $conexion->query($sql2);
        while($row2 = $result2->fetch_assoc()) {
            $sheet->setCellValue('B'.$i.'', $row2["correctas"]);
            $sheet->setCellValue('C'.$i.'', $row2["incorrectas"]);
            $sheet->setCellValue('D'.$i.'', $row2["puntaje"]);
            $sheet->setCellValue('E'.$i.'', $row2["ejercicios"]);
            $sheet->setCellValue('F'.$i.'', $row2["hora"]);
            $sheet->setCellValue('G'.$i.'', $row2["faciles"]);
            $sheet->setCellValue('H'.$i.'', $row2["medios"]);
            $sheet->setCellValue('I'.$i.'', $row2["dificiles"]);
            $sheet->getStyle('B'.$i.':I'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('5cefc5');
            $idPartida = $row2["id"];
            $sql3="SELECT * FROM testc WHERE idPartida='$idPartida'";
            $result3 = $conexion->query($sql3);
            while($row3 = $result3->fetch_assoc()) {
                $sheet->setCellValue('J'.$i.'', $row3["a"]."x".$row3["b"]);
                $sheet->setCellValue('K'.$i.'', $row3["r"]);
                $sheet->setCellValue('L'.$i.'', $row3["intentos"]);
                $sheet->setCellValue('M'.$i.'', $row3["segundos"]);
                $sheet->setCellValue('N'.$i.'', $row3["estado"]);
                $sheet->setCellValue('O'.$i.'', $row3["etapa"]);
                $sheet->setCellValue('P'.$i.'', $row3["origen"]);
                $sheet->getStyle('J'.$i.':P'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('ef5c96');
                $idEjercicio = $row3["id"];
                $sql4="SELECT * FROM intentosc WHERE idEjercicio='$idEjercicio'";
                $result4 = $conexion->query($sql4);
                while($row4 = $result4->fetch_assoc()) {
                    $sheet->setCellValue('Q'.$i.'', $row4["intento"]);
                    $sheet->getStyle('Q'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('CD9184');
                    $i++;
                    $aux=1;
                }
                if($aux==0){
                    $i++;
                    $aux2=1;
                }
                $aux=0;
                
            }
            if($aux2==0){
                $i++;
                $aux3=1;
            }
            $aux2=0;
        }
        if($aux3==0){
            $i++;   
        }
        $aux3=0;
        
    }
}
$conexion->close();

$spreadsheet->setActiveSheetIndex(0);
$writer = new Xlsx($spreadsheet);
//$writer->save('hello world.xlsx');




$filename = "exceltest";



header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="'. $filename .'.xls"'); /*-- $filename is  xsl filename ---*/
header('Cache-Control: max-age=0');
 
$writer->save('php://output');
