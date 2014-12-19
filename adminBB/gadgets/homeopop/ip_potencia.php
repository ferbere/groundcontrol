<?php
include_once('../../../classes/mysql.php');
$mysql = new MySQL();
if(isset($_POST['nombre'])){
	$nombre=$_POST["nombre"];
}

$sql=$mysql->consulta("INSERT INTO homeopop_potencia (nombre) VALUES ('{$nombre}')");
	if(!$sql){
		echo '<script>window.location.href="../../homeopop.php?ruta=if_potencia.php&capturado=2";</script>';
	}else{
		echo '<script>window.location.href="../../homeopop.php?ruta=if_potencia.php&capturado=1";</script>';
		exit();
	}
?>