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
<table width="600" align="center">
	<form method="post" action="gadgets/citas/ip_citas.php">
	<tr>
		<td colspan="2"><h1>Cita nueva</h1></td>
	</tr>
	<tr>
		<td colspan="2">
			Autor:<br>
			<input type="text" name="autor" size="80%"><br>
			Contenido:<br>
			<textarea name="contenido" rows=19 cols=70 width:300px height:40px></textarea><br>
			Diputado:<br>
			<select name="diputado">
<?php
$sql_dipu=mysql_query("SELECT id,nombre FROM perfil_index ORDER BY nombre ASC",$link);
while ($row_dipu=mysql_fetch_array($sql_dipu)){
	echo '<option value="'.$row_dipu[0].'">'.$row_dipu[1].'</a>';
}
?>
			Visible:</br>
<input type="radio" name="visible" value="0" checked>No  
<input type="radio" name="visible" value="1">S�
		</td>
	</tr>
	<tr>
		<td valign="bottom">
			<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
	</form>
		</td>
	</tr>
</table>
<?php
}else{
	echo "El contenido ha sido capturado, debidamente. �Muy bien!";
}
}else{
echo "Usted no tiene acceso a esta seccci�n";
}
?>