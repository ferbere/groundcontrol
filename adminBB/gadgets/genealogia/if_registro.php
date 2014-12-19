<?php
session_start();
if($_SESSION['privilegioss']=='ferbere'){
include_once("../classes/mysql.php");
$mysql=new MySQL();
?>
	<script language="javascript">
	function MM_popupMsg(msg){
	if (confirm(msg)){
	document.form2.submit();
	}
	}
	</script>
<?php
if(isset($_GET['capturado'])){
$capturado=$_GET['capturado'];
}
if(empty($capturado)){
	$sql=$mysql->consulta("SELECT id FROM genealogia_index ");
	$hay=$mysql->num_rows($sql);
	$sql_gen=$mysql->consulta("SELECT id,nombre FROM genealogia_generacion");
	//while ($row=mysql_fetch_array($sql)){
	//if($row['fecha_fal']==0){
	$imagen_sug=($hay+1);
	?>
	<script>
	function metodoClick(){ 
	   	document.miFormulario.miCheck.click() 
	} 
	</script> 
	<div align="center">
	<table width="400" border="0" cellpadding="0">
		<tr>
			<form method="post" action="gadgets/genealogia/ip_registro.php" name="fvalida">
			<td align="left">
				Imagen personal <small>(nombre sugerido: <?php echo $imagen_sug.'.jpg' ?>)</small><br>
				<input type="text" name="foto" size"10">.jpg<br>
				Generacion:<br>
				<select name="generacion">
	<?php
		while($row_gen=$mysql->fetch_array($sql_gen)){
			echo 	'<option value="'.$row_gen[0].'">'.$row_gen[1].'</option>';
		}
	?>
				</select><br>
				Nombre:<br>
				<input type="text" name="nombre" style="width:75%" placeholder="Nombre  Apellido Paterno  Apellido Materno"><br>
				<font size=4>Fecha nacimiento:</font><br>
				<input type="text" name="fecha_nac" style="width:55%" placeholder="00/00/0000"><br>
				<font size=4>Género:</font><br>
				<font size=3>mujer</font><input type="radio" name="genero" value="0">
				<font size=3>hombre</font><input type="radio" name="genero" value="1"><br>
				<font size=4>Ocupación:</font><br>
				<input type="text" name="ocupacion" style="width:55%"><br>
				<font size=4>Se casó:</font><br><font size=3>Sí</font>
				<input type="radio" name="casose" value="1">
				<font size=3>No</font>
				<input type="radio" name="casose" value="2"><br>
				<font size=4>Fecha matrimonio:</font><br>
				<input type="text" name="fecha_mat" style="width:55%" placeholder="00/00/0000"><br>
				<font size=4>Fecha defunción:</font><br>
				<input type="text" name="fecha_fal" style="width:55%" placeholder="00/00/0000"><br><br>
				<font size=4>Terminado:</font><br>
				<select name="done">
					<option value="0">No</a>
					<option value="1">Sí</a>
				</select><br><br>
				<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
				</form>
			</td>
		</tr>
	</table>
	</div>
	<?php
}else{
	echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
}
}else{
echo "Usted no tiene acceso a esta sección";
}
?>