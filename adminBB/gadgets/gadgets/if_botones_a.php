<?php
session_start();
if($_SESSION["privilegioss"]=="ferbere"){
	$link=Conectarse();
	include("../library/tinymce.php");
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
	if(empty($capturado)){
		$sql=mysql_query("SELECT gadgets_botones.nombre,gadgets_botones.imagen,gadgets_botones.ruta,general_ext.nombre,gadgets_posicion.nombre FROM gadgets_botones INNER JOIN general_ext ON gadgets_botones.ext = general_ext.id INNER JOIN gadgets_posicion ON gadgets_botones.posicion = gadgets_posicion.id WHERE gadgets_botones.id = '$rubro' ",$link);
		$sql_ext=mysql_query("SELECT id,nombre FROM general_ext",$link);
		$sql_pos=mysql_query("SELECT id,nombre FROM gadgets_posicion ORDER BY nombre ASC",$link);
		while($row=mysql_fetch_array($sql)){
			$nombre=$row['0'];
			$imagen=$row['1'];
			$ruta=$row['2'];
			$ext=$row['3'];
			$posicion=$row['4'];
		}
	?>
	<div id="form-main">
		<form method="post" action="gadgets/gadgets/ip_botones_a.php">
			<div id="maincontent-tit">
				Modificar botones
			</div>
				<div id="maincontent-body">
					<div>
						Nombre:<br><input type="text" name="nombre" size="30" value="<?php echo $nombre; ?>"><br>
						Imagen:<br><input type="text" name="imagen" size="30" value="<?php echo $imagen; ?>">
						<select name="ext">
	<?php
	while($row_ext = mysql_fetch_array($sql_ext)){
		if($ext==$row_ext[1]){
			$f='selected';
		}else{
			$f='nain';
		}
						echo '<option value="'.$row_ext[0].'"'.$f.'>'.$row_ext[1].'</a>';
	}
	?>
						</select><br><br>
						Posicion:<br>
						<select name="posicion">
	<?php
	while($row_pos = mysql_fetch_array($sql_pos)){
		if($posicion==$row_pos[1]){
			$p='selected';
		}else{
			$p='nain';
		}
						echo '<option value="'.$row_pos[0].'"'.$p.'>'.$row_pos[1].'</a>';
	}
	?>
						</select><br><br>
						Ruta:<br><input type="text" name="ruta" size="60" value="<?php echo $ruta; ?>"><br>

						<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
					</div>
						<div>
							<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
			</form>
						</div>
		</div>
	<?php
	}else{
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}
}else{
echo "Usted no tiene acceso a esta seccción";
}
?>