<?php
session_start();
if($_SESSION['estado']=="Autenticado"){
	if(isset($_GET["rubro"])){
	$rubro=$_GET["rubro"];
	}
	extract($_SESSION);
	include_once("../classes/mysql.php");
	$mysql = new MySQL();
	$sql = $mysql -> consulta("SELECT * FROM comprar_index WHERE id = '$rubro' ORDER BY id DESC ");
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
<?php
while($row = $mysql -> fetch_array($sql)){
	$pedido=$row["pedido"];
	$urldecode=urldecode($pedido);
	$unserialize=unserialize($urldecode);
?>
	<table id="general1">
		<tr>
			<td><h1>Comentarios</h1><br>
<?php
	$contador=0;
	$suma=0;
	$i = 0;
?>
				<table id="general2">
<?php
	 foreach($unserialize as $k => $v){
	 	$subto=$v['cantidad']*$v['precio'];
		$suma=$suma+$subto;
		$contador++;
		$i++;
?>
					<tr><td id="general3">
<?php
		echo $i.'.- Relativo al concepto: <strong>'.$v['nombre'].'</strong>';
?>
						</td></tr>
						<tr><td id="general4">
								"<?php echo $v['comentario']; ?>"
							</td></tr>
<?php	} ?>
				</table>
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
<?php }?>
		</div>
	</body>
<?php
}else{
	echo "Usted no tiene acceso a esta sección";
}
?>