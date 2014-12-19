<?php
session_start();
include_once('../../../classes/mysql.php');
$mysql = new MySQL();
$numero=$_POST["numero"];
$capacidad=$_POST["capacidad"];

$que=$mysql->consulta("INSERT INTO hotel_habitacion (numero,capacidad) values ('{$numero}','{$capacidad}') ");
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../hotel.php?ruta=if_habitacion.php&capturado=1";</script>';
}
?>