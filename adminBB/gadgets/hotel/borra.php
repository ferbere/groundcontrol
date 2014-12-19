<?php
session_start();
if(($_SESSION['privilegioss']=='ferbere')||($_SESSION['privilegioss']=='directivo')){
	include_once('../../../classes/conex.php');
	//$link=Conectarse();
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
	if(isset($_GET['borra'])){
		$borra=$_GET['borra'];
	}

	if($borra==1){
		mysql_query("DELETE FROM hotel_moneda WHERE id = '$rubro' ", $link);
		header("Location: ".$_SERVER['PHP_SELF'].'?ruta=bus_moneda.php');	
	}elseif($borra==2){
		mysql_query("DELETE FROM hotel_tarifa WHERE id = '$rubro' ", $link);
		header("Location: ".$_SERVER['PHP_SELF'].'?ruta=bus_tarifa.php');	
	}elseif($borra==3){
		mysql_query("DELETE FROM hotel_habitacion WHERE id = '$rubro' ", $link);
		header("Location: ".$_SERVER['PHP_SELF'].'?ruta=bus_habitacion.php');	
	}
}else{
	echo "No tienes privilegios para ingresar en esta sección";
}
?>