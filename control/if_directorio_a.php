<?php
session_start();
if(($_SESSION["privilegioss"]=="directivo")||($_SESSION["privilegioss"]=="ferbere")){
	$link=Conectarse();
	include("library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
	if(empty($capturado)){
		$sql=mysql_query("SELECT * FROM homeopop_directorio WHERE id = '$rubro' ",$link);
		while($row=mysql_fetch_array($sql)){
			$nombre=$row['nombre'];
			$domicilio=$row['domicilio'];
			$poblacion=$row['poblacion'];
			$estado=$row['estado'];
			$email=$row['email'];
			$telefono=$row['telefono'];
			$celular=$row['celular'];
			$f_nac=$row['f_nac'];
			$recomienda=$row['recomienda'];
			$activated=$row['activated'];
			$sexo=$row['sexo'];
		}
?>
	<div id="form-main">
		<form method="post" action="control.php?ruta=ip_directorio_a.php">
		<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
		<div id="maincontent-tit">
			<h1>paciente alta</h1><br>
		</div>
			<div id="maincontent-body">
				<div>
					Nombre completo:<br>
					<input type="text" name="nombre" size="100" autofocus value="<?php echo $nombre; ?>"><br><br>
					Domicilio:<br>
					<input type="text" name="domicilio" size="100" value="<?php echo $domicilio; ?>"><br><br>
					Población:<br>
					<input type="text" name="poblacion" size="100" value="<?php echo $poblacion; ?>"><br><br>
					Estado:<br>
					<input type="text" name="estado" size="100" value="<?php echo $estado; ?>"><br><br>
				</div>
					<div style="float: left">
						e-mail:<br>
						<input type="email" name="email" size="25" value="<?php echo $email; ?>"><br>
					</div>
						<div style="float: left; position: relative; left: 50px">
							Teléfono:<br>
							<input type="text" name="telefono" size="15" value="<?php echo $telefono; ?>"><br><br>
						</div>
							<div style="float: left; position: relative; left: 120px">
								Teléfono celular:<br>
								<input type="text" name="celular" size="15" value="<?php echo $celular; ?>"><br><br>
							</div>
				</div>
			<div style="clear: both">
			<div>
			Fecha de nacimiento:<br>
			<input type="date" name="f_nac" size="100" value="<?php echo $f_nac; ?>"><br><br>
			<?php
			if($sexo==1){
				$sexo_si='checked';
				$sexo_no='nain';
			}else{
				$sexo_si='nain';
				$sexo_no='checked';
			}
			?>
			Género:<br>
			Hombre
			<input type="radio" name="sexo" value="1" <?php echo $sexo_si ?>>
			Mujer
			<input type="radio" name="sexo" value="2" <?php echo $sexo_no ?>><br><br>

			Recomendado de:<br>
			<input type="text" name="recomienda" size="100" value="<?php echo $recomienda; ?>"><br><br>
			</div>
				<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
				</form>
						</div>
		</div>
<?php
	}elseif($capturado==1){
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}elseif($capturado==2){
		echo "El contenido no se capturó por algún motivo.";
	}
}else{
	echo "Usted no tiene acceso a esta seccción";
}
?>