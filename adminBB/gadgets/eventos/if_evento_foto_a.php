<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){
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
		$sql=mysql_query("SELECT * FROM eventos_fotos WHERE id = '$rubro' ",$link);
		while($row=mysql_fetch_array($sql)){
	?>
		<div id="form-main">
			<form method="post" action="gadgets/eventos/ip_evento_foto_a.php">
			<div id="maincontent-tit">
				Modificar evento<br><br>
			</div>
				<div id="maincontent-body">
					<div style="border:0px solid; height:100%">
						<div style="width:250px; position: relative; float:left; text-align:center">
						<img src="../images/visitantes/<?php echo $row['imagen'] ?>.jpg" style="max-width: 200px; max-heigth: 200px">
						</div>
							<div style="position: relative; float: left; left:50px">
								Nombre:<br>
				<input type="text" name="nombre" size="30" value="<?php echo $row['nombre']; ?>"><br>
								Evento:<br>
				<select name="evento">
					<option value="0">Ninguno</option>
<?php
$sql_evento=mysql_query("SELECT id,nombre FROM eventos_index",$link);
while($row_evento=mysql_fetch_array($sql_evento)){
	if($row['evento']==$row_evento['id']){
		$selected='selected';
	}else{
		$selected='nain';
	}
	echo '<option value="'.$row_evento["id"].'"'.$selected.'>'.$row_evento['nombre'].'</option>';
	
}
?>
				</select>
<br>
								Imagen:<br>
				<input type="text" name="imagen" size="20" value="<?php echo $row['imagen']; ?>">.jpg<br><br>
				<?php
				if($row['visible']==1){
					$visi_no='nain';
					$visi_si='checked';
				}elseif($row['visible']==0){
					$visi_no='checked';
					$visi_si='nain';

				}
				?>
								Visible:<br>
					<input type="radio" name="visible" value="0" <?php echo $visi_no ?>>No
					<input type="radio" name="visible" value="1" <?php echo $visi_si ?>>Sí<br>			
					<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
				</div>
							<div style="clear:both; text-align:center">
								<br><br>Participan:<br>
				<textarea name="participan" rows=19 cols=70 width:300px height:40px><?php echo $row['participan'] ?></textarea><br><br>
				<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
				</form>
							</div>
						</div>
								<div>
								</div>
			</div>
<?php
		}//Termina while(principal)
	}else{
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}
}else{
	echo "Usted no tiene acceso a esta seccción";
}
?>