<?php
session_start();
include("style/header_admin.html");
if($_SESSION["estado"]=="Autenticado"){
include("library/tinymce.php");
include("library/confirm.php");
if(isset($_GET['capturado'])){
$capturado=$_GET['capturado'];
}
if(empty($capturado)){
?>
	<table border="0" cellpadding="0" width="600" align="center">
	<form method="post" action="ip_submenu.php">
	<tr>
		<td colspan="2">
			<h1>Agregar Submenús</h1>
		</td>
	</tr>
		<tr>
			<td colspan="2">
				Nombre:<br><input type="text" name="nombre" size="30">
			</td>
		</tr>
			<tr>
				<td>
					Vinculado a:  <select name="vin">
						<option value="0">ninguno</a>
				<?php
				$link=Conectarse();	
				$sql=mysql_query("SELECT id,nombre FROM botones WHERE id > 5" ,$link);
				while ($row=mysql_fetch_array($sql)){
					echo '<option value="'.$row['id'].'">'."\n".$row['nombre']."</a>   ";
				}
				?>
					</select>
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