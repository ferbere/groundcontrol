<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
$titulo=$_POST["titulo"];
$subtitulo=$_POST["subtitulo"];
$contenido=$_POST["contenido"];
$publicado=$_POST["publicado"];
$fecha=$_POST["fecha"];
$orden=$_POST["orden"];
$categoria=$_POST["categoria"];

$path='../../../images/noticias/';
//datos del arhivo 
$nombre_archivo = $_FILES['imagen']['name']; 
$tipo_archivo = $_FILES['imagen']['type']; 
$tamano_archivo = $_FILES['imagen']['size']; 
//compruebo si las caracter�sticas del archivo son las que deseo 

if(empty($nombre_archivo)){
	$que=mysql_query("INSERT INTO noticias_index (titulo,subtitulo,contenido,publicado,fecha,imagen,orden,categoria) VALUES ('{$titulo}','{$subtitulo}','{$contenido}','{$publicado}','{$fecha}','{$nombre_archivo}','{$orden}','{$categoria}') ",$link);
			if(!$que){
				die ("Pos no se captur� el contenido, parece que: " .mysql_error());
				echo '<script>window.location.href="../../noticias.php?ruta=if_noticias.php&capturado=0";</script>';				
			}else{
			echo 	'<script>window.location.href="../../noticias.php?ruta=if_noticias.php&capturado=1";</script>';
			}
}else{  //!empty($nombre_archivo), por supuesto!!	
	if (!((strpos($tipo_archivo, "png") || strpos($tipo_archivo, "jpeg")) && ($tamano_archivo < 1500000))) { 
			echo '<script>window.location.href="../../noticias.php?ruta=if_noticias.php&capturado=2";</script>';  
	}else{ 
	   	if (move_uploaded_file($_FILES['imagen']['tmp_name'], $path.$nombre_archivo)){ 
			$que=mysql_query("INSERT INTO noticias_index (titulo,subtitulo,contenido,publicado,fecha,imagen,orden,categoria) VALUES ('{$titulo}','{$subtitulo}','{$contenido}','{$publicado}','{$fecha}','{$nombre_archivo}','{$orden}','{$categoria}') ",$link);
					if(!$que){
						die ("Pos no se captur� el contenido, parece que: " .mysql_error());
						echo '<script>window.location.href="../../noticias.php?ruta=if_noticias.php&capturado=0";</script>';				
					}else{
					echo 	'<script>window.location.href="../../noticias.php?ruta=if_noticias.php&capturado=1";</script>';
					}
		}
	}
}
?>