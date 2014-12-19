<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST['rubro'])){
	$rubro=$_POST['rubro'];	
}
if(isset($_POST['nombre'])){
	$nombre=$_POST['nombre'];	
}
if(isset($_POST['desde'])){
	$desde=$_POST['desde'];
}
if(isset($_POST['hasta'])){
	$hasta=$_POST['hasta'];	
}

$mysql=mysql_query("UPDATE catalogo_temporadas SET  nombre = '$nombre',desde = '$desde',hasta = '$hasta' WHERE id = '$rubro'" ,$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../catalogo.php?ruta=if_temporadas_a.php&capturado=1";</script>';
}
?>