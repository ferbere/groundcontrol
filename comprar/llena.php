<?php
session_start();

/*$carro=$_SESSION['carro'];*/
	if(isset($_GET['borra'])){
		$borra = $_GET['borra'];
	}
	if(!empty($borra)){
		unset($_SESSION['carro']);
		header("Location:availability.php");
	}
	echo '<a href="'.$_SERVER['PHP_SELF'].'?ruta=llena.php&borra=1">reset</a><br>';

	extract($_SESSION);
//	echo $_SESSION['user'].'<br>';

	print_r ($carro).'<br><br>';
//	echo 	$carro['ferbere']['fecha_A'];

