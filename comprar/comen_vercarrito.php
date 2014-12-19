<?php
session_start();
if($_SESSION['estado']=="Autenticado"){
	if(isset($_GET["rubro"])){
	$rubro=$_GET["rubro"];
	}
//	extract($_SESSION);
	include_once("../classes/mysql.php");
	?>
	<!DOCTYPE HTML>
		<html>
		<head>
			<title>Comentario sobre su compra</title>
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
				<td><h1>Comentarios</h1><br>
<?php
	print_r ($_SESSION['carro'][$rubro]["comentario"]);
	echo '</td>';
	echo '</tr>';
	echo '</table>';
?>
		</td>
	</tr>
		<tr>
			<td id="general5_boton">
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