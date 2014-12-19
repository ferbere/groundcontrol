<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
$nombre=$_POST["nombre"];
$ruta=$_POST["ruta"];
$contenido=$_POST["contenido"];
$visible=$_POST["visible"];

$path='../../../images/ligas/';
//datos del arhivo 
$nombre_archivo = $_FILES['imagen']['name']; 
$tipo_archivo = $_FILES['imagen']['type']; 
$tamano_archivo = $_FILES['imagen']['size']; 
//compruebo si las características del archivo son las que deseo 

if (!((strpos($tipo_archivo, "png") || strpos($tipo_archivo, "jpeg")) && ($tamano_archivo < 1500000))) { 
		echo '<script>window.location.href="../../ligas.php?ruta=if_ligas.php&capturado=2";</script>';  
}else{ 
   	if (move_uploaded_file($_FILES['imagen']['tmp_name'], $path.$nombre_archivo)){ 
	$que=mysql_query("INSERT INTO ligas_index (nombre,ruta,imagen,visible,contenido) values ('{$nombre}','{$ruta}','{$nombre_archivo}','{$visible}','{$contenido}') ",$link);
		if(!$que){
			die ("Pos no se capturó el contenido, parece que: " .mysql_error());
			echo '<script>window.location.href="../../ligas.php?ruta=if_ligas.php&capturado=0";</script>';				
		}else{
		echo 	'<script>window.location.href="../../ligas.php?ruta=if_ligas.php&capturado=1";</script>';
		}
	}
}
	?>