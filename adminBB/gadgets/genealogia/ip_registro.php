<?php
session_start();
if($_SESSION['privilegioss']=='ferbere'){
include_once("../../../classes/mysql.php");
include_once("../../../classes/cambiaf_a_mysql.class.php");
$mysql=new MySQL();

$generacion=$_POST['generacion'];
$nombre=$_POST['nombre'];
$genero=$_POST['genero'];
$fecha_nac=$_POST['fecha_nac'];
$ocupacion=$_POST['ocupacion'];
$casose=$_POST['casose'];
$fecha_mat=$_POST['fecha_mat'];
$fecha_fal=$_POST['fecha_fal'];
$foto=$_POST['foto'];
$done=$_POST['done'];

$que=$mysql->consulta("INSERT INTO genealogia_index (generacion,nombre,genero,fecha_nac,ocupacion,casose,fecha_mat,fecha_fal,foto,done)values ('{$generacion}','{$nombre}','{$genero}','".cambiaf_a_mysql($fecha_nac)."','{$ocupacion}','{$casose}', '".cambiaf_a_mysql($fecha_mat)."', '".cambiaf_a_mysql($fecha_fal)."','{$foto}','{$done}')");
if(!$que){
	die ("chispas:" .mysql_error());
}else{
	echo 	'<script>window.location.href="../../genealogia.php?ruta=if_registro.php&capturado=1";</script>';
}


?><?php
}else{
	echo "Usted no tiene acceso  esta seccción";
}
?>