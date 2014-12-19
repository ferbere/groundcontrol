<?php
session_start();
	include_once('../../../classes/conex.php');
	$link=Conectarse();
	if(isset($_POST['user'])){
		$user=addslashes(trim($_POST['user']));
	}
	if(isset($_POST['passwd'])){
		$passwd=md5(addslashes(trim($_POST['passwd'])));
	}

	if(isset($_POST['name'])){
		$name=($_POST['name']);
	}
	if(isset($_POST['address'])){
		$address=($_POST['address']);
	}
	if(isset($_POST['city'])){
		$city=($_POST['city']);
	}
	if(isset($_POST['state'])){
		$state=($_POST['state']);
	}
	if(isset($_POST['country'])){
		$country=($_POST['country']);
	}
	if(isset($_POST['zip'])){
		$zip=($_POST['zip']);
	}
	if(isset($_POST['mail'])){
		$mail=($_POST['mail']);
	}
	if(isset($_POST['phone'])){
		$phone=($_POST['phone']);
	}
	$mysql=mysql_query("INSERT INTO homeopop_directorio_medicos (user,passwd,name,address,city,state,country,zip,mail,phone) values ('{$user}','{$passwd}','{$name}','{$address}','{$city}','{$state}','{$country}','{$zip}','{$mail}','{$phone}')",$link);
	if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
	}else{
	echo '<script>window.location.href="sesion.php?ruta=exe_activate.php&mail='.$mail.'&name='.$name.'&";</script>';
	exit();
	}
?>