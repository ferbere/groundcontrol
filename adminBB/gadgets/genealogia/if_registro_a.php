<script language="javascript">
function MM_popupMsg(msg){
if (confirm(msg)){
document.form2.submit();
}
}
</script>

<?php 
session_start();
if($_SESSION['privilegioss']=='ferbere'){
include_once("../classes/mysql.php");
include_once("../classes/cambiaf_a_normal.class.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql =$mysql->consulta( "SELECT * FROM genealogia_index WHERE id = '$rubro' ");
$sql_gen=$mysql->consulta("SELECT id,nombre FROM genealogia_generacion");
while ($row = $mysql->fetch_array($sql)) {
?>

<table id="inicio">
	<tr>
		<form method="post" action="gadgets/genealogia/ip_registro_a.php">
		<input type="hidden" name="rubro" value="<?php print $rubro?>">
		<td id="fots">
			<h3><p style="text-align: center">
			<?php echo $row['nombre'] ?></p></h3><br><br>
			<img src="../images/articulos/<?php echo $row['foto'] ?>.jpg" width="300">
			<font size="2"><br>(nombre sugerido para la foto: <?php echo $row['id'].'.jpg' ?>)</font><br><input type="text" name="foto" value="<?php echo $row['foto'] ?>" />.jpg<br>
			Nombre:<br><input type="text" name="nombre" style="width:95%" value="<?php echo $row['nombre'] ?>" /><br>
				Generacion:<br>
				<select name="generacion">
	<?php
		while($row_gen=$mysql->fetch_array($sql_gen)){
			if($row_gen[0]==$row['generacion']){
				$hig_gen='selected';
			}else{
				$hig_gen='nain';
			}
			echo 	'<option value="'.$row_gen[0].'"'.$hig_gen.'>'.$row_gen[1].'</option>';
		}
	?>
				</select><br>
			Fecha nacimiento:<br><input type="text" name="fecha_nac" value="<?php echo cambiaf_a_normal($row['fecha_nac']) ?>"><br>
<?php if($row['genero']==0){
	$hombre=''; $mujer='checked';
}else{
	$hombre='checked'; $mujer='';
}
?>
		Género:<br><font size=3>Mujer</font>
		<input type="radio" name="genero" value="0"<?php echo $mujer ?>/>
		<font size=3>Hombre</font>
		<input type="radio" name="genero" value="1"<?php echo $hombre ?>/>  <br>
		Ocupación<br>
		<input type="text" name="ocupacion"  value="<?php echo $row['ocupacion'] ?>" ><br>
<?php
if($row['casose']==0){
	$cas0='checked'; $cas1=''; $cas2='';
}elseif($row['casose']==1){
	$cas0=''; $cas1='checked'; $cas2='';
}else{
	$cas0=''; $cas1=''; $cas2='checked';
}
?>		<fieldset>
		<legend>Se casó:</legend>
		<label for="$cas0">No sé</label>
		<input type="radio" name="casose" value="0"<?php echo $cas0 ?>/>
		<label for="$cas1">Sí</label>
		<input type="radio" name="casose" value="1"<?php echo $cas1 ?>/>
		<label for="$cas2">No</label>
		<input type="radio" name="casose" value="2"<?php echo $cas2 ?>/>
		</fieldset><br>
		Fecha matrimonio:<br>
		<input type="text" name="fecha_mat" value="<?php echo cambiaf_a_normal($row['fecha_mat']) ?>"><br>
		Fecha defunción:<br>
		<input type="text" name="fecha_fal" value="<?php echo cambiaf_a_normal($row['fecha_fal']) ?>"><br>
<?php if($row['done']==0){
	$si=''; $no='checked';
}else{
	$si='checked'; $no='';
}
?>
		<br>Terminado:<br><font size=3>No</font>
		<input type="radio" name="done" value="0"<?php echo $no ?>/>
		<font size=3>Sí</font>
		<input type="radio" name="done" value="1"<?php echo $si ?>/>  <br>
<br><br>
		<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
		</form>
	<td align="center">
<div class="fil_t">Parientes</div>
	<table id="filiacion" valign="top">
		<tr>
			<td>
				<table id="fili_int">
					<tr>
						<td  class=filnor onmouseover="this.className='filover';" onmouseout="this.className='filnor';" onclick="location.replace('genealogia.php?ruta=bus_fili.php&fili=<?php echo $rubro ?>');">
							Agregar papá o
						</td>
					</tr>
					<tr>
						<td align="center">
<?php
$sql2=mysql_query("SELECT * FROM genealogia_fili WHERE fili = $rubro",$link);
$hay=(mysql_num_rows($sql2));
if($hay==0){
	echo "No hay registro de sus padres. Agréguelos.";
}else{
	echo '<font color="#ff9900">eliminar a:</font> <br>';
	while ($row2=mysql_fetch_array($sql2)){
		$padres=$row2['parent_f'];
		$sql3=mysql_query("SELECT nombre,id FROM genealogia_index WHERE id = '$padres' ",$link);
		while ($row3=mysql_fetch_array($sql3)){
			echo '<li><a href="gadgets/genealogia/borra.php?borra=2&rubro='.$row3['id'].'&rubro2='.$rubro.'">
			'.$row3['nombre'].'
			</a></li>';
		}
	}
}
?>
						</td>
					</tr>
					<tr>
						<td  class=filnor onmouseover="this.className='filover';" onmouseout="this.className='filnor';" onclick="location.replace('genealogia.php?ruta=bus_conyuge.php&fili=<?php echo $rubro ?>&parentesco=<?php echo $row['genero'] ?>');">
						Agregar cónyuge o
						</td>
					</tr>
					<tr>
						<td align="center">
	<?php
	$sql6=mysql_query("SELECT * FROM genealogia_conyuge WHERE conyuge = '$rubro' OR parent = '$rubro' ",$link);
	$hay6=(mysql_num_rows($sql6));
	if($hay6==0){
	echo "No hay registro de cónyuge. Agréguelo.";
	}else{
		echo '<font color="#ff9900">eliminar a:</font> <br>';
		while ($row6=mysql_fetch_array($sql6)){
			if($rubro==$row6['parent']){
				$conyuge=$row6['conyuge'];
			}elseif($rubro==$row6['conyuge']){
				$conyuge=$row6['parent'] ;
			}
			$sql7=mysql_query("SELECT nombre,id FROM genealogia_index WHERE id = '$conyuge' ",$link);
			while ($row7=mysql_fetch_array($sql7)){
				echo '<li><a href="gadgets/genealogia/borra.php?borra=3&rubro2='.$row7['id'].'&rubro='.$rubro.'">
					'.$row7['nombre'].'
				</a></li>';
			}
		}
	}
?>
</td></tr>

<tr><td  class=filnor onmouseover="this.className='filover';" onmouseout="this.className='filnor';" onclick="location.replace('genealogia.php?ruta=bus_pater.php&fili=<?php echo $rubro ?>&parentesco=<?php echo $row['genero'] ?>');">Agregar hijos o</td></tr>
<tr><td align="center">
	<?php
	$sql4=mysql_query("SELECT * FROM genealogia_fili WHERE parent_f = $rubro",$link);
	$hay4=(mysql_num_rows($sql4));
	if($hay4==0){
	echo "No hay registro de sus hijos. Agréguelos.";
	}else{
	echo '<font color="#ff9900">eliminar a:</font> <br>';
	while ($row4=mysql_fetch_array($sql4)){
	$hijos=$row4['fili'];
	$sql5=mysql_query("SELECT nombre,id FROM genealogia_index WHERE id = '$hijos' ",$link);
	while ($row5=mysql_fetch_array($sql5)){
	echo '<li><a href="gadgets/genealogia/borra.php?borra=4&rubro='.$row5['id'].'&rubro2='.$rubro.'">'.$row5['nombre'].'</a></li>';
	}
	}
	}
	?>
</td></tr>
<tr><td><font size="2" color="#ff9900"><br>Haga click para relacionar a personas que ya están en el sistema, como familiares de </font>
</td></tr>
</table></td></tr>
<tr height="0"><td class="fil_bottom"><?php echo $row['nombre'] ?></td>
</tr>
</table>

</td>
</tr>
</table></div>
<?php } ?>

<?php
}else{
echo "Usted no tiene acceso a esta sección";
}
?>
