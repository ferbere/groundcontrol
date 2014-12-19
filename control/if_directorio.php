<?php
session_start();
if(($_SESSION["privilegioss"]=="ferbere") || ($_SESSION["privilegioss"]=="directivo")){

	$link=Conectarse();

	include("library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
?>
	<div id="form-main">
		<form method="post" action="control.php?ruta=ip_directorio.php">
<!--		<input type="hidden" name="ruta" value="ip_directorio.php">-->
		<div id="maincontent-tit">
			<h1>paciente alta</h1><br>
		</div>
			<div id="maincontent-body">
				<div>
					Nombre completo:<br>
					<input type="text" name="nombre" size="100" autofocus placeholder="Nombre Paterno Materno"><br><br>
					Domicilio:<br>
					<input type="text" name="domicilio" size="100" placeholder="Calle número interior"><br><br>
					Población:<br>
					<input type="text" name="poblacion" size="100"><br><br>
					Estado:<br>
					<input type="text" name="estado" size="100"><br><br>
				</div>
					<div style="float: left">
						e-mail:<br>
						<input type="email" name="email" size="25"><br>
					</div>
						<div style="float: left; position: relative; left: 50px">
							Teléfono:<br>
							<input type="text" name="telefono" size="15"><br><br>
						</div>
							<div style="float: left; position: relative; left: 120px">
								Teléfono celular:<br>
								<input type="text" name="celular" size="15"><br><br>
							</div>
				</div>
			<div style="clear: both">
			<div>
			Fecha de nacimiento:<br>
			<input type="date" name="f_nac" size="100"><br><br>
			Género:<br>
			Hombre
			<input type="radio" name="sexo" value="1">
			Mujer
			<input type="radio" name="sexo" value="2"><br><br>

			Recomendado de:<br>
			<input type="text" name="recomienda" size="100"><br><br>
			</div>
				<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
				</form>
			</div>
			</div>
		</div>
<?php
	}elseif($capturado==1){
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}elseif($capturado==2){
		echo "No se capturó.";
	}
}else{
echo "Usted no tiene acceso a esta seccción";
}
?>