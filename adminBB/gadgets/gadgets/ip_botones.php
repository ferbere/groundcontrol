<?php
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST['nombre'])){
	$nombre=$_POST['nombre'];
}
if(isset($_POST['posicion'])){
	$posicion=$_POST['posicion'];
}
if(isset($_POST['ruta'])){
	$ruta=$_POST['ruta'];
}
if(isset($_POST['imagen'])){
	$imagen=$_POST['imagen'];
}
if(isset($_POST['ext'])){
	$ext=$_POST['ext'];
}
if(isset($_POST['submenu'])){
	$submenu=$_POST['submenu'];
}
$mysql=mysql_query("INSERT INTO gadgets_botones (nombre,posicion,ruta,imagen,ext,submenu) VALUES ('{$nombre}','{$posicion}','{$ruta}','{$imagen}','{$ext}','{$submenu}')",$link);
if(!$mysql){
	die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../gadgets.php?ruta=if_botones.php&capturado=1";</script>';
}
?>