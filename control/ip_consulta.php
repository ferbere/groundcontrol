<?php
include_once('classes/mysql.php');
$mysql = new MySQL();
if(isset($_POST['sintomas'])){
	$sintomas=$_POST["sintomas"];
}
if(isset($_POST['medicamento'])){
	$medicamento=$_POST["medicamento"];
}
if(isset($_POST['modo'])){
	$modo=$_POST["modo"];
}
if(isset($_POST['observaciones'])){
	$observaciones=$_POST["observaciones"];
}
if(isset($_POST['potencia'])){
	$potencia=$_POST["potencia"];
}
if(isset($_POST['rubro'])){
	$rubro=$_POST["rubro"];
}
$sql=$mysql->consulta("INSERT INTO homeopop_consulta2 (sintomas,medicamento,modo,observaciones,potencia,paciente) VALUES ('{$sintomas}','{$medicamento}','{$modo}','{$observaciones}','{$potencia}','{$rubro}')");
	if(!$sql){
		echo '<script>window.location.href="control.php?ruta=if_consulta.php&capturado=2";</script>';
	}else{
		echo '<script>window.location.href="control.php?ruta=if_consulta.php&capturado=1";</script>';
		exit();
	}
?>