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
if(isset($_POST["contenido"])){
	$contenido=$_POST["contenido"];
}
if(isset($_POST["visible"])){
	$visible=$_POST["visible"];
}
$path='../../../images/encuesta/';
//datos del arhivo 
$nombre_archivo = $_FILES['imagen']['name']; 
$tipo_archivo = $_FILES['imagen']['type']; 
$tamano_archivo = $_FILES['imagen']['size']; 
//compruebo si las caracterÝsticas del archivo son las que deseo 

if(empty($nombre_archivo)){
$que=mysql_query("UPDATE quiz_index SET nombre='$nombre',contenido='$contenido',visible='$visible' WHERE id = '$rubro' ",$link);
	if(!$que){
		die ("Pos no se capturˇ el contenido, parece que: " .mysql_error());
		echo '<script>window.location.href="../../quiz.php?ruta=if_quiz.php&capturado=0";</script>';				
	}else{
		echo	'<script>window.location.href="../../quiz.php?ruta=if_quiz_a.php&capturado=1";</script>';
	}
}else{// O sea, !emty($nombre_archivo), por supuesto!!
	if (!((strpos($tipo_archivo, "png") || strpos($tipo_archivo, "jpeg")) && ($tamano_archivo < 1500000))) { 
			echo '<script>window.location.href="../../quiz.php?ruta=if_quiz.php&capturado=2";</script>';  
	}else{ 
	   	if(move_uploaded_file($_FILES['imagen']['tmp_name'], $path.$nombre_archivo)){ 
			$que=mysql_query("UPDATE quiz_index SET nombre='$nombre',imagen='$nombre_archivo',contenido='$contenido',visible='$visible' WHERE id = '$rubro' ",$link);
			if(!$que){
				die ("Pos no se capturˇ el contenido, parece que: " .mysql_error());
				echo '<script>window.location.href="../../quiz.php?ruta=if_quiz.php&capturado=0";</script>';				
			}else{
				echo	'<script>window.location.href="../../quiz.php?ruta=if_quiz_a.php&capturado=1";</script>';
			}
		}
	}
}
?>