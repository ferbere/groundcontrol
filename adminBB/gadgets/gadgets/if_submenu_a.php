<?php
session_start();
include("style/header_admin.html");
if($_SESSION["estado"]=="Autenticado"){
$link=Conectarse();
include("library/tinymce.php");
include("library/confirm.php");
if(isset($_GET['capturado'])){
$capturado=$_GET['capturado'];
}
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($capturado)){
	$sql=mysql_query("SELECT * FROM submenu WHERE id = '$rubro' ",$link);
	while($row=mysql_fetch_array($sql)){
		$nombre=$row['nombre'];
		$vin=$row['vin'];
	}
?>
<table border="0" cellpadding="0" width="600" align="center">
	<form method="post" action="ip_submenu_a.php">
	<tr>
		<td>
			<h1>Modificar Submenú</h1>
		</td>
	</tr>
		<tr>
			<td>
				Nombre:<br><input type="text" name="nombre" size="30" value="<?php echo $nombre; ?>"><br>
				<select name="vin">
<?php
echo 	'<option value="0">ninguno</a>';

$sql2=mysql_query("SELECT * FROM botones WHERE id > 5", $link);
while ($row2=mysql_fetch_array($sql2)){
	if($row2['id']==$vin){
		$f='selected';
	}else{
		$f='nain';
	}


					echo '<option value="'.$row2['id'].'"'.$f.'>'.$row2['nombre'].'</a>';
}
?>
				</select><br><br>
				<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
			</td>
		</tr>
			<tr>
				<td valign="bottom">
					<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
	</form>
				</td>
					<td>
					</td>
			</tr>
</table>
<?php
}else{
	echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
}
}else{
echo "Usted no tiene acceso a esta seccción";
}
include("style/footer_admin.html"); ?>