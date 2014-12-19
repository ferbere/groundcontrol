<?php
$link=Conectarse();
//include("library/tinymce.php");
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
	if(isset($_GET['consulta'])){
		$consulta=$_GET['consulta'];
	}
	$sql = $mysql->consulta("SELECT
	homeopop_consulta2.id,homeopop_consulta2.fecha,homeopop_consulta2.sintomas,homeopop_medicamentos.nombre,homeopop_potencia.nombre,homeopop_consulta2.modo,homeopop_consulta2.observaciones FROM homeopop_consulta2 INNER JOIN homeopop_medicamentos ON homeopop_consulta2.medicamento = homeopop_medicamentos.id INNER JOIN homeopop_potencia ON homeopop_consulta2.potencia = homeopop_potencia.id WHERE homeopop_consulta2.id = '$consulta'");
	while($row=$mysql->fetch_array($sql)){
		$id=$row[0];
		$fecha=$row[1];
		$sintomas=$row[2];
		$medicamento=$row[3];
		$potencia=$row[4];
		$modo=$row[5];
		$observaciones=$row[6];
	}
?>
<div id="form-main">
			<a href="control.php?ruta=consulta.php&rubro=<?php echo $rubro ?>">regresar</a>
	<form method="post" action="control.php?ruta=ip_consulta_a.php">
	<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
	<input type="hidden" name="consulta" value="<?php echo $consulta ?>">	
	<div id="maincontent-tit">
		<h1>Consulta</h1><br>
	</div>
		<div id="maincontent-body">
			<div>
				Fecha:<br>
				<input type="text" name="fecha" size="100" value="<?php echo $fecha; ?>"><br><br>
				Síntomas:<br>
				<textarea name="sintomas" cols="100" rows="20" autofocus><?php echo $sintomas; ?></textarea><br><br>
				Medicamento: 
				<select name="medicamento">
				<?php
				$sql_med = $mysql->consulta("SELECT id,nombre FROM homeopop_medicamentos ");
				while($row_med=$mysql->fetch_array($sql_med)){
					if($medicamento!=$row_med[1]){
						$hig='nain';
					}else{
						$hig='selected';
					}
					echo '<option value="'.$row_med[0].'"'.$hig.'>'.$row_med[1].'</option>';
				}
				?>
				</select>
				Potencia:
				<select name="potencia">
		<?php
		$sql_pot = $mysql->consulta("SELECT id,nombre FROM homeopop_potencia");
		while($row_pot=$mysql->fetch_array($sql_pot)){
			if($potencia!=$row_pot[1]){
				$spot='nain';
			}else{
				$spot='selected';
			}
			echo '<option value="'.$row_pot[0].'"'.$spot.'>'.$row_pot[1].'</option>';
		}
		?>
				</select>
				<br><br>
				Prescripción:<br>
				<textarea name="modo" cols="100" rows="5"><?php echo $modo; ?></textarea><br><br>
				Observaciones:<br>
				<textarea name="observaciones" cols="100" rows="20"><?php echo $observaciones; ?></textarea><br><br>
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