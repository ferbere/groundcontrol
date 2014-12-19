<?php
session_start();
if($_SESSION['privilegioss']=='ferbere'){
include_once("../../../classes/mysql.php");
include_once("../../../classes/cambiaf_a_mysql.class.php");
$mysql=new MySQL();
if(isset($_POST['rubro'])){
	$rubro=$_POST['rubro'];
}
if(isset($_POST['generacion'])){
	$generacion=$_POST['generacion'];	
}
if(isset($_POST['nombre'])){
	$nombre=$_POST['nombre'];
}
if(isset($_POST['genero'])){
	$genero=$_POST['genero'];
}
if(isset($_POST['fecha_nac'])){
	$fecha_nac=cambiaf_a_mysql($_POST['fecha_nac']);
}
if(isset($_POST['ocupacion'])){
	$ocupacion=$_POST['ocupacion'];
}
if(isset($_POST['casose'])){
	$casose=$_POST['casose'];
}
if(isset($_POST['fecha_mat'])){
	$fecha_mat=cambiaf_a_mysql($_POST['fecha_mat']);
}
if(isset($_POST['fecha_fal'])){
	$fecha_fal=cambiaf_a_mysql($_POST['fecha_fal']);
}
if(isset($_POST['foto'])){
	$foto=$_POST['foto'];
}
if(isset($_POST['done'])){
	$done=$_POST['done'];
}

$que=$mysql->consulta("UPDATE genealogia_index SET
	generacion='$generacion',nombre='$nombre',genero='$genero',fecha_nac='$fecha_nac',ocupacion='$ocupacion',casose='$casose',fecha_mat='$fecha_mat',fecha_fal='$fecha_fal',foto='$foto',done='$done' WHERE id = '$rubro' ");
if(!$que){
	die ("chispas:" .mysql_error());
}else{
	echo 	'<script>window.location.href="../../genealogia.php?ruta=if_registro_a.php&rubro='.$rubro.'&capturado=1";</script>';
}
}else{
	echo "Usted no tiene acceso  esta seccción";
}
?>