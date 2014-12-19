<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST["rubro"])){
	$rubro=$_POST["rubro"];
}
if(isset($_POST["numero"])){
	$numero=$_POST["numero"];
}
if(isset($_POST["capacidad"])){
	$capacidad=$_POST["capacidad"];
}
if(isset($_POST["tarifa_1"])){
	$tarifa_1=$_POST["tarifa_1"];
}
if(isset($_POST["tarifa_2"])){
	$tarifa_2=$_POST["tarifa_2"];
}
if(isset($_POST["tarifa_3"])){
	$tarifa_3=$_POST["tarifa_3"];
}
if(isset($_POST["tarifa_4"])){
	$tarifa_4=$_POST["tarifa_4"];
}
if(isset($_POST["tarifa_5"])){
	$tarifa_5=$_POST["tarifa_5"];
}
if(isset($_POST["tarifa_6"])){
	$tarifa_6=$_POST["tarifa_6"];
}
$que=mysql_query("UPDATE hotel_habitacion SET numero = '$numero',capacidad = '$capacidad',tarifa_1 = '$tarifa_1',tarifa_2 = '$tarifa_2',tarifa_3 = '$tarifa_3',tarifa_4 = '$tarifa_4',tarifa_5 = '$tarifa_5',tarifa_6 = '$tarifa_6' WHERE id = '$rubro'",$link);
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../hotel.php?ruta=if_habitacion_a.php&capturado=1";</script>';
}
?>