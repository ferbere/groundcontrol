<?php
session_start();
if(($_SESSION['privilegioss']=='ferbere')||($_SESSION['privilegioss']=='directivo')){	
	include_once('classes/mysql.php');
	$mysql = new MySQL();
	if(isset($_POST['rubro'])){
		$paciente=$_POST["rubro"];
	}
	if(isset($_POST['consulta'])){
		$consulta=$_POST["consulta"];
	}
	if(isset($_POST['fecha'])){
		$fecha=$_POST["fecha"];
	}
	if(isset($_POST['sintomas'])){
		$sintomas=$_POST["sintomas"];
	}
	if(isset($_POST['medicamento'])){
		$medicamento=$_POST["medicamento"];
	}
	if(isset($_POST['potencia'])){
		$potencia=$_POST["potencia"];
	}
	if(isset($_POST['modo'])){
		$modo=$_POST["modo"];
	}
	if(isset($_POST['observaciones'])){
		$observaciones=$_POST["observaciones"];
	}
	$sql=$mysql->consulta("UPDATE homeopop_consulta2 SET sintomas='$sintomas',fecha='$fecha' ,medicamento='$medicamento',potencia='$potencia',modo='$modo',observaciones='$observaciones' WHERE id ='$consulta'");
		if(!$sql){
			echo '<script>window.location.href="control.php?ruta=if_consulta_a.php&capturado=2";</script>';
		}else{
			echo '<script>window.location.href="control.php?ruta=if_consulta_a.php&capturado=1";</script>';
		}
}else{
echo '<script>window.location.href="control.php?ruta=if_consulta_a.php&capturado=2";</script>';
}
?>