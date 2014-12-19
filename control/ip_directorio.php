<?php
session_start();
if(($_SESSION['privilegioss']=='ferbere')||($_SESSION['privilegioss']=='directivo')){	
	include_once('classes/mysql.php');
	$mysql = new MySQL();
	if(isset($_POST['nombre'])){
		$nombre=$_POST["nombre"];
	}
	if(isset($_POST['domicilio'])){
		$domicilio=$_POST["domicilio"];
	}
	if(isset($_POST['poblacion'])){
		$poblacion=$_POST["poblacion"];
	}
	if(isset($_POST['estado'])){
		$estado=$_POST["estado"];
	}
	if(isset($_POST['email'])){
		$email=$_POST["email"];
	}
	if(isset($_POST['telefono'])){
		$telefono=$_POST["telefono"];
	}
	if(isset($_POST['celular'])){
		$celular=$_POST["celular"];
	}
	if(isset($_POST['f_nac'])){
		$f_nac=$_POST["f_nac"];
	}
	if(isset($_POST['sexo'])){
		$sexo=$_POST["sexo"];
	}
	if(isset($_POST['recomienda'])){
		$recomienda=$_POST["recomienda"];
	}
	$sql=$mysql->consulta("INSERT INTO homeopop_directorio (nombre,domicilio,poblacion,estado,email,telefono,celular,f_nac,sexo,recomienda) VALUES ('{$nombre}','{$domicilio}','{$poblacion}','{$estado}','{$email}','{$telefono}','{$celular}','{$f_nac}','{$sexo}','{$recomienda}')");
		if(!$sql){
			echo '<script>window.location.href="control.php?ruta=if_directorio.php&capturado=2";</script>';
		}else{
			echo '<script>window.location.href="control.php?ruta=if_directorio.php&capturado=1";</script>';
			exit();
		}
}else{
echo  '<script>window.location.href="control.php?ruta=if_directorio.php&capturado=2";</script>';
}
?>