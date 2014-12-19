<?php
session_start();
include("../library/confirm.php");
if(($_SESSION["privilegioss"]=="ferbere")||($_SESSION["privilegioss"]=="admin")){
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
		$link=Conectarse();
		if(isset($_GET['rubro'])){
			$rubro=$_GET['rubro'];
		}
	$sql=mysql_query("SELECT * FROM descargar_index WHERE id = '$rubro' ");
	while($row=mysql_fetch_array($sql)){
?>
<table border="0" cellpadding="0" width="600" align="center">
<form method="post" action="gadgets/descargar/ip_descargar_a.php">
<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
	<tr>
		<td colspan="2">
			<h1>Editar material</h1>
		</td>
	</tr>
		<tr>
			<td>
				Nombre:<br><input type="text" name="nombre" size="30" value="<?php echo $row['nombre'] ?>">
			</td>
				<td>
					Extensión .<input type="text" name="ext" size="5" value="<?php echo $row['ext'] ?>">
				</td>
		</tr>
			<tr>
				<td>
			<?php
			if($row['visible']==1){
				$vissi='checked';
				$visno='nain';
			}elseif($row['visible']==0){
				$vissi='nain';
				$visno='checked';
			}
			?>
					Visible <br>
					Sí<input type="radio" name="visible" value="1" <?php echo $vissi  ?>>
					No<input type="radio" name="visible" value="0" <?php echo $visno  ?>>
				</td>
					<td>Disponibilidad<br>
					<select name="disponible">
					<?php
					$usuario = array(2=>'Súperadmin',3=>'Usuarios',4=>'Prensa');
					for($i=2;$i<=4;$i++){
						if($row['disponible']==$i){
							$dispo='selected';
						}else{
							$dispo='';
						}
						echo '<option value="'.$i.'"'.$dispo.'>'.$usuario[$i].'</a>';
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
}
}else{
	echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
}
}else{
echo "Usted no tiene acceso a esta seccción";
}
?>