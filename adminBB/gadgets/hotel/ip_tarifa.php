<?php
session_start();
include_once('../../../classes/mysql.php');
$mysql = new MySQL();
$nombre=$_POST["nombre"];
$cantidad=$_POST["cantidad"];
$moneda=$_POST["moneda"];

$que=$mysql->consulta("INSERT INTO hotel_tarifa (nombre,cantidad,moneda) values ('{$nombre}','{$cantidad}','{$moneda}') ");
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../hotel.php?ruta=if_tarifa.php&capturado=1";</script>';
}
?>