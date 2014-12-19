<?php
session_start();
if($_SESSION['estado']=="Autenticado"){
	if(isset($_GET["rubro"])){
	$rubro=$_GET["rubro"];
	}
	if(isset($_POST["rubro"])){
	$rubro=$_POST["rubro"];
	}

	if(isset($_POST["comentar"])){
	$comentar=$_POST["comentar"];
	}
	if(isset($_POST["comentario"])){
	$comentario=$_POST["comentario"];
	}
	include_once("../classes/mysql.php");
	$mysql = new MySQL();
/*		if($_SESSION['privilegioss_id']>1){
			if($rubro!=$_SESSION['id']){
				$rubro=$_SESSION['id'];
			}
		}*/
	?>
	<!DOCTYPE HTML>
		<html>
			<head>
				<title>Comentar sobre su compra</title>
			<link rel="stylesheet" type="text/css" href="../style/style_comprar_coment.css" />
				<script>
					function cerrarse(){
					window.close() }
				</script>
			</head>
	<body>
		<div id="general">
			<table id="general1">
				<tr>
					<td><h1>Comentar</h1><br>
<?php
		if(empty($comentar)){ ?>
			<form action="comentar.php" method="post">
				En el carrito de compra de: <? echo $_SESSION['user'] ?><br>
				<textarea name="comentario" cols="50%" rows="20%" placeholder="Escriba su comentario"></textarea><br><br>
				<input type="hidden" name="comentar" value="1">
				<input type="submit" value="agregar">
			</form><br>
<?php

		}else{
			$_SESSION['carro'][$_SESSION['rubro']]['comentario'] = $comentario;
			echo "Su comentario ".$comentario." está agregado. Gracias.";
			unset($_SESSION['rubro']);
		} ?>
			<form>
				<input type=image value="Cerrar" src="../style/images/cruz.png" onclick="cerrarse()">
			</form>
			</td>
		</tr>
	</table>
		</div>
	</body>
<?php
}else{
	echo "Usted no tiene acceso a esta sección";
}
?>