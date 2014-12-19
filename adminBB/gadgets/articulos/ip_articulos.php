<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST['categoria'])){
	$categoria=$_POST['categoria'];
}
if(isset($_POST['titulo'])){
	$titulo=$_POST['titulo'];
}
if(isset($_POST['subtitulo'])){
	$subtitulo=$_POST['subtitulo'];
}
if(isset($_POST['edicion'])){
	$edicion=$_POST['edicion'];
}
if(isset($_POST['contenido'])){
	$contenido=$_POST['contenido'];
}
if(isset($_POST['publicado'])){
	$publicado=$_POST['publicado'];
}
if(isset($_POST['autor'])){
	$autor=$_POST['autor'];
}
if(isset($_POST['fecha'])){
	$fecha=$_POST['fecha'];
}


$path='../../../images/opinion/';
//datos del arhivo 
$nombre_archivo = $_FILES['imagen']['name']; 
$tipo_archivo = $_FILES['imagen']['type']; 
$tamano_archivo = $_FILES['imagen']['size']; 
//compruebo si las características del archivo son las que deseo 

if(empty($nombre_archivo)){
$que=mysql_query("INSERT INTO articulos_index (categoria,titulo,subtitulo,edicion,contenido,publicado,autor,fecha) values ('{$categoria}','{$titulo}','{$subtitulo}','{$edicion}','{$contenido}','{$publicado}','{$autor}','{$fecha}') ",$link);
			if(!$que){
				die ("Pos no se capturó el contenido, parece que: " .mysql_error());
				echo '<script>window.location.href="../../articulos.php?ruta=if_articulos.php&capturado=0";</script>';				
			}else{
			echo 	'<script>window.location.href="../../articulos.php?ruta=if_articulos.php&capturado=1";</script>';
			}
}else{  //!empty($nombre_archivo), por supuesto!!	
	if (!((strpos($tipo_archivo, "png") || strpos($tipo_archivo, "jpeg")) && ($tamano_archivo < 1500000))) { 
			echo '<script>window.location.href="../../articulos.php?ruta=if_articulos.php&capturado=2";</script>';  
	}else{ 
	   	if (move_uploaded_file($_FILES['imagen']['tmp_name'], $path.$nombre_archivo)){ 
			$que=mysql_query("INSERT INTO articulos_index (categoria,titulo,subtitulo,edicion,contenido,publicado,autor,imagen,fecha) values ('{$categoria}','{$titulo}','{$subtitulo}','{$edicion}','{$contenido}','{$publicado}','{$autor}','{$nombre_archivo}','{$fecha}') ",$link);
					if(!$que){
						die ("Pos no se capturó el contenido, parece que: " .mysql_error());
						echo '<script>window.location.href="../../articulos.php?ruta=if_articulos.php&capturado=0";</script>';				
					}else{
					echo 	'<script>window.location.href="../../articulos.php?ruta=if_articulos.php&capturado=1";</script>';
					}
		}
	}
}
?>