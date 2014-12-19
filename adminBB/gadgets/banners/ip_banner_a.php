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
if(isset($_POST['contenido'])){
	$contenido=$_POST['contenido'];
}
if(isset($_POST['orientacion'])){
	$orientacion=$_POST['orientacion'];
}
if(isset($_POST['orden'])){
	$orden=$_POST['orden'];
}
if(isset($_POST['visible'])){
	$visible=$_POST['visible'];
}
if(isset($_POST['banner'])){
	$banner=$_POST['banner'];	
}

$path='../../../images/banners/';
//datos del arhivo 
$nombre_archivo = $_FILES['imagen']['name']; 
$tipo_archivo = $_FILES['imagen']['type']; 
$tamano_archivo = $_FILES['imagen']['size']; 
//compruebo si las características del archivo son las que deseo 

if(empty($nombre_archivo)){
$sql=mysql_query("UPDATE banners_index SET  nombre = '$nombre', contenido= '$contenido', orientacion = $orientacion, orden='$orden', visible='$visible', banner = '$banner' WHERE id = '$rubro'" ,$link);
	if(!$sql){
		die ("Pos no se capturó el contenido, parece que: " .mysql_error());
		echo '<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=0";</script>';				
	}else{
		echo 	'<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=1";</script>';
	}
}else{  //!empty($nombre_archivo), por supuesto!!	
	if (!((strpos($tipo_archivo, "png") || strpos($tipo_archivo, "jpeg") || strpos($tipo_archivo, "gif")) && ($tamano_archivo < 1500000))) { 
			echo '<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=2";</script>';  
	}else{ 
	   	if (move_uploaded_file($_FILES['imagen']['tmp_name'], $path.$nombre_archivo)){ 
			$sql=mysql_query("UPDATE banners_index SET  nombre = '$nombre', contenido= '$contenido', orientacion = $orientacion, orden='$orden', visible='$visible', imagen = '$nombre_archivo', banner = '$banner' WHERE id = '$rubro'" ,$link);
					if(!$sql){
						die ("Pos no se capturó el contenido, parece que: " .mysql_error());
						echo '<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=0";</script>';				
					}else{
					echo 	'<script>window.location.href="../../banners.php?ruta=if_banner.php&capturado=1";</script>';
					}
		}
	}
}
?>