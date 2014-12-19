<?php
session_start();
	include_once('../../../classes/conex.php');
	$link=Conectarse();
	if(isset($_POST['user'])){
		$user=($_POST['user']);
	}
	if(isset($_POST['desde'])){
		$desde=($_POST['desde']);
	}
	if(isset($_POST['hasta'])){
		$hasta=($_POST['hasta']);
	}
	if(isset($_POST['suma'])){
		$suma=($_POST['suma']);
	}
	if(isset($_POST['catalogo'])){
		$catalogo=($_POST['catalogo']);
	}
	if(isset($_POST['precio'])){
		$precio=($_POST['precio']);
	}
	$mysql=mysql_query("INSERT INTO comprar_index (user,desde,hasta,suma,catalogo,precio) values ('{$user}','{$desde}','{$hasta}','{$suma}','{$catalogo}','{$precio}')",$link);
	if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
	}else{
	echo '<script>window.location.href="availability.php?ruta=exe_schedule.php&user='.$user.'&desde='.$desde.'&hasta='.$hasta.'&suma='.$suma.'&catalogo='.$catalogo.'";</script>';

	exit();
	}
?>