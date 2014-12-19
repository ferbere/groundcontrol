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
if(isset($_POST["cambio"])){
	$cambio=$_POST["cambio"];
}

$que=mysql_query("UPDATE hotel_moneda SET nombre = '$nombre',cambio = '$cambio' WHERE id = '$rubro'",$link);
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../hotel.php?ruta=if_moneda_a.php&capturado=1";</script>';
}
?>