<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
$nombre=$_POST['nombre'];
$orientacion=$_POST['orientacion'];
$contenido=$_POST['contenido'];
$orden=$_POST['orden'];
$visible=$_POST['visible'];
$banner=$_POST['banner'];

$path='../../../images/banners/';
//datos del arhivo 
$nombre_archivo = $_FILES['imagen']['name']; 
$tipo_archivo = $_FILES['imagen']['type']; 
$tamano_archivo = $_FILES['imagen']['size']; 
//compruebo si las caracter�sticas del archivo son las que deseo 

if(empty($nombre_archivo)){
$sql=mysql_query("INSERT INTO banners_index (nombre,orientacion,contenido,orden,visible,imagen,banner) values ('{$nombre}','{$orientacion}', '{$contenido}','{$orden}','{$visible}','{$nombre_archivo}','{$banner}')",$link);
	if(!$sql){
		die ("Pos no se captur� el contenido, parece que: " .mysql_error());
		echo '<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=0";</script>';				
	}else{
		echo 	'<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=1";</script>';
	}
}else{  //!empty($nombre_archivo), por supuesto!!	
	if (!((strpos($tipo_archivo, "png") || strpos($tipo_archivo, "jpeg") || strpos($tipo_archivo, "gif")) && ($tamano_archivo < 1500000))) { 
			echo '<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=2";</script>';  
	}else{ 
	   	if (move_uploaded_file($_FILES['imagen']['tmp_name'], $path.$nombre_archivo)){ 
			$sql=mysql_query("INSERT INTO banners_index (nombre,orientacion,contenido,orden,visible,imagen,banner) VALUES ('{$nombre}','{$orientacion}', '{$contenido}','{$orden}','{$visible}','{$nombre_archivo}','{$banner}')",$link);
					if(!$sql){
						die ("Pos no se captur� el contenido, parece que: " .mysql_error());
						echo '<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=0";</script>';				
					}else{
					echo 	'<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=1";</script>';
					}
		}
	}
}
?>