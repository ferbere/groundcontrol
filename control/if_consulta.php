<?php
$link=Conectarse();
include("library/tinymce.php");
include("library/confirm.php");
if(isset($_GET['capturado'])){
	$capturado=$_GET['capturado'];
}
if(empty($capturado)){
	include_once("classes/mysql.php");
	$mysql = new MySQL();
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
?>
<div id="form-main">
	<form method="post" action="control.php?ruta=ip_consulta.php">
	<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
	<div id="maincontent-tit">
		<h1>Consulta</h1><br>
	</div>
		<div id="maincontent-body">
			<div>
				Síntomas:<br>
				<textarea name="sintomas" cols="100" rows="20" autofocus></textarea><br><br>
				Medicamento: 
				<select name="medicamento">
				<?php
				$sql_med = $mysql->consulta("SELECT id,nombre FROM homeopop_medicamentos ");
				while($row_med=$mysql->fetch_array($sql_med)){
					echo '<option value="'.$row_med[0].'">'.$row_med[1].'</option>';
				}
				?>
				</select>
				Potencia:
				<select name="potencia">
				<?php
				$sql_pot = $mysql->consulta("SELECT id,nombre FROM homeopop_potencia");
				while($row_pot=$mysql->fetch_array($sql_pot)){
					echo '<option value="'.$row_pot[0].'">'.$row_pot[1].'</option>';
				}
				?>
				</select>
				<br><br>
				Prescripción:<br>
				<textarea name="modo" cols="100" rows="5"></textarea><br><br>
				Observaciones:<br>
				<textarea name="observaciones" cols="100" rows="20"></textarea><br><br>
			</div>

		</div>
			<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
			</form>
	</div>
<?php
}elseif($capturado==1){
	echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
}elseif($capturado==2){
	echo "No se capturó.";
}
?>