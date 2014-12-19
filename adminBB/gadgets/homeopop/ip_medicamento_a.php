<?php
session_start();
include_once('../../../classes/mysql.php');
$mysql = new MySQL();
if(isset($_POST['rubro'])){
	$rubro=$_POST["rubro"];
}
if(isset($_POST['nombre'])){
	$nombre=$_POST["nombre"];
}
$sql=$mysql->consulta("UPDATE homeopop_medicamentos SET nombre='$nombre' WHERE id ='$rubro'");
	if(!$sql){
		echo '<script>window.location.href="../../homeopop.php?ruta=if_medicamento_a.php&capturado=2";</script>';
	}else{
		echo '<script>window.location.href="../../homeopop.php?ruta=if_medicamento_a.php&capturado=1";</script>';
	}
?>