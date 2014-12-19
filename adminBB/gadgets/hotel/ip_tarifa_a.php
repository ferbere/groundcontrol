<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST["rubro"])){
	$rubro=$_POST["rubro"];
}
if(isset($_POST["nombre"])){
	$nombre=$_POST["nombre"];
}
if(isset($_POST["cantidad"])){
	$cantidad=$_POST["cantidad"];
}
if(isset($_POST["moneda"])){
	$moneda=$_POST["moneda"];
}
$que=mysql_query("UPDATE hotel_tarifa SET nombre = '$nombre',cantidad = '$cantidad',moneda = '$moneda' WHERE id = '$rubro'",$link);
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../hotel.php?ruta=if_tarifa_a.php&capturado=1";</script>';
}
?>