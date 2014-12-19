<?php
include_once("classes/mysql.php");
$mysql = new MySQL();

$hoy = date("Y-m-d");
$sql = $mysql->consulta("SELECT id,nombre FROM catalogo_temporadas WHERE '$hoy' BETWEEN desde AND hasta ");
$row= $mysql->fetch_array($sql);
	$id 		=	$row[0];
	$nombre 	=	$row[1];
	$sel		= 'precio_'.$nombre;
	$sql2 = $mysql->consulta("SELECT ".$sel.",nombre FROM catalogo_index WHERE id = 1");
	$row2 = $mysql->fetch_array($sql2);
	echo 'Villa: '.$row2[1].', Precio: '.$row2[0].', en temporada '.$nombre;
?>