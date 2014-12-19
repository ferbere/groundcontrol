<?php
session_start();
if(($_SESSION["privilegioss"]=="ferbere")||($_SESSION["privilegioss"]=="admin")){
$link=Conectarse();
include("../library/tinymce.php");
include("../library/confirm.php");
if(isset($_GET['capturado'])){
$capturado=$_GET['capturado'];
}
if(empty($capturado)){
?>
<table border="0" cellpadding="0" width="600" align="center">
<form method="post" action="gadgets/descargar/ip_descargar.php">
	<tr>
		<td colspan="2">
			<h1>Agregar material</h1>
		</td>
	</tr>
		<tr>
			<td>
				Nombre:<br><input type="text" name="nombre" size="30">
			</td>
				<td>
					Extensión .<input type="text" name="ext" size="5">
				</td>
		</tr>
			<tr>
				<td>
					Visible <br>
					Sí<input type="radio" name="visible" value="1">
					No<input type="radio" name="visible" value="0" checked>
				</td>
					<td>Disponibilidad<br>
						<select name="disponible">
							<option value="2">Súperadmin</a>
							<option value="3">Usuarios</a>
							<option value="4">Prensa</a>
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
?>