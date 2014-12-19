<?php
session_start();
include_once("../classes/mysql.php");
$mysql = new MySQL();
if(isset($_GET["user"])){
	$user=$_GET["user"];
}
if(isset($_GET["pedido"])){
	$pedido=$_GET["pedido"];
}
if(isset($_GET["suma"])){
	$suma=$_GET["suma"];
}
$sql = $mysql->consulta("INSERT INTO comprar_index (user,pedido,suma,fecha,hora) values ('{$user}','{$pedido}','{$suma}',' " . ($_POST['fecha']) . date("Y/m/d ") . " ',' " . ($_POST['hora']) . date("H:i:s") . " ') ");


unset($_SESSION['carro']);

header("Location:comprar.php?ruta=comprara.php");
exit();
?>