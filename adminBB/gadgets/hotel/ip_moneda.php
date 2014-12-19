<?php
session_start();
include_once('../../../classes/mysql.php');
$mysql = new MySQL();
$nombre=$_POST["nombre"];
$cambio=$_POST["cambio"];

$que=$mysql->consulta("INSERT INTO hotel_moneda (nombre,cambio) values ('{$nombre}','{$cambio}') ");
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../hotel.php?ruta=if_moneda.php&capturado=1";</script>';
}
?>