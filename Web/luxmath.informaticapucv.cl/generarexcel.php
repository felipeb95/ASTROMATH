<?php
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
include 'database.php';


$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

$sheet->setTitle("Feedback Random");
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
$sheet->setCellValue('A1', 'NOMBRE');
$sheet->setCellValue('B1', 'CORRECTAS');
$sheet->setCellValue('C1', 'INCORRECTAS');
$sheet->setCellValue('D1', 'PUNTAJE');
$sheet->setCellValue('E1', 'EJERCICIOS');
$sheet->setCellValue('F1', 'FECHA');
$sheet->setCellValue('G1', 'OPERACION');
$sheet->setCellValue('H1', 'RESPUESTA');
$sheet->setCellValue('I1', 'ESTADO');
$sheet->setCellValue('J1', 'ETAPA');
$sheet->setCellValue('K1', 'ORIGEN');
$sheet->getStyle('A1:K1')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('bababa');
$i=2;
$aux=0;
$aux2=0;
$aux3=0;
$aux4=0;
$sql="SELECT * FROM plat_users WHERE grupo=0 and id>3 ";
$result = $conexion->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $sheet->setCellValue('A'.$i.'', $row["nombre"]." ".$row["apellido"]);
        $sheet->getStyle('A'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('efed5d');
        $idUser = $row["id"];
        $sql2="SELECT * FROM plat_partida WHERE idUser='$idUser'";
        $result2 = $conexion->query($sql2);
        while($row2 = $result2->fetch_assoc()) {
            $sheet->setCellValue('B'.$i.'', $row2["correctas"]);
            $sheet->setCellValue('C'.$i.'', $row2["incorrectas"]);
            $sheet->setCellValue('D'.$i.'', $row2["puntaje"]);
            $sheet->setCellValue('E'.$i.'', $row2["ejercicios"]);
            $sheet->setCellValue('F'.$i.'', $row2["hora"]);
            $sheet->getStyle('B'.$i.':F'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('5cefc5');
            $idPartida = $row2["id"];
            $sql3="SELECT * FROM plat_ejercicio WHERE idPartida='$idPartida'";
            $result3 = $conexion->query($sql3);
            while($row3 = $result3->fetch_assoc()) {
                if($row3["operacion"]=="x")$sheet->setCellValue('G'.$i.'', $row3["a"]."x".$row3["b"]);
                if($row3["operacion"]=="/")$sheet->setCellValue('G'.$i.'', $row3["a"]."/".$row3["b"]);
                if($row3["operacion"]=="+")$sheet->setCellValue('G'.$i.'', $row3["a"]."+".$row3["b"]);
                if($row3["operacion"]=="-")$sheet->setCellValue('G'.$i.'', $row3["a"]."-".$row3["b"]);
                $sheet->setCellValue('H'.$i.'', $row3["r"]);
                $sheet->setCellValue('I'.$i.'', $row3["estado"]);
                $sheet->setCellValue('J'.$i.'', $row3["etapa"]);
                $sheet->setCellValue('K'.$i.'', $row3["origen"]);
                $sheet->getStyle('G'.$i.':K'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('ef5c96');
                $idEjercicio = $row3["id"];
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
$sheet->setTitle("Feedback Memoria");

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
$sheet->setCellValue('A1', 'NOMBRE');
$sheet->setCellValue('B1', 'CORRECTAS');
$sheet->setCellValue('C1', 'INCORRECTAS');
$sheet->setCellValue('D1', 'PUNTAJE');
$sheet->setCellValue('E1', 'EJERCICIOS');
$sheet->setCellValue('F1', 'FECHA');
$sheet->setCellValue('G1', 'OPERACION');
$sheet->setCellValue('H1', 'RESPUESTA');
$sheet->setCellValue('I1', 'ESTADO');
$sheet->setCellValue('J1', 'ETAPA');
$sheet->setCellValue('K1', 'ORIGEN');
$sheet->getStyle('A1:K1')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('bababa');
$i=2;
$aux=0;
$aux2=0;
$aux3=0;
$aux4=0;
$sql="SELECT * FROM plat_users WHERE grupo=1 and id>3";
$result = $conexion->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $sheet->setCellValue('A'.$i.'', $row["nombre"]." ".$row["apellido"]);
        $sheet->getStyle('A'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('efed5d');
        $idUser = $row["id"];
        $sql2="SELECT * FROM plat_partida WHERE idUser='$idUser'";
        $result2 = $conexion->query($sql2);
        while($row2 = $result2->fetch_assoc()) {
            $sheet->setCellValue('B'.$i.'', $row2["correctas"]);
            $sheet->setCellValue('C'.$i.'', $row2["incorrectas"]);
            $sheet->setCellValue('D'.$i.'', $row2["puntaje"]);
            $sheet->setCellValue('E'.$i.'', $row2["ejercicios"]);
            $sheet->setCellValue('F'.$i.'', $row2["hora"]);
            $sheet->getStyle('B'.$i.':F'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('5cefc5');
            $idPartida = $row2["id"];
            $sql3="SELECT * FROM plat_ejercicio WHERE idPartida='$idPartida'";
            $result3 = $conexion->query($sql3);
            while($row3 = $result3->fetch_assoc()) {
                if($row3["operacion"]=="x")$sheet->setCellValue('G'.$i.'', $row3["a"]."x".$row3["b"]);
                if($row3["operacion"]=="/")$sheet->setCellValue('G'.$i.'', $row3["a"]."/".$row3["b"]);
                if($row3["operacion"]=="+")$sheet->setCellValue('G'.$i.'', $row3["a"]."+".$row3["b"]);
                if($row3["operacion"]=="-")$sheet->setCellValue('G'.$i.'', $row3["a"]."-".$row3["b"]);
                $sheet->setCellValue('H'.$i.'', $row3["r"]);
                $sheet->setCellValue('I'.$i.'', $row3["estado"]);
                $sheet->setCellValue('J'.$i.'', $row3["etapa"]);
                $sheet->setCellValue('K'.$i.'', $row3["origen"]);
                $sheet->getStyle('G'.$i.':K'.$i.'')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setARGB('ef5c96');
                $idEjercicio = $row3["id"];
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




$filename = "Resultados PlatMath";



header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="'. $filename .'.xls"'); /*-- $filename is  xsl filename ---*/
header('Cache-Control: max-age=0');
 
$writer->save('php://output');
