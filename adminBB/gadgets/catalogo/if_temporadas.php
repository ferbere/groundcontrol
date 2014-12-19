<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){
	$link=Conectarse();
	include("../library/tinymce.php");
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
?>
		<div id="form-main">
		<form method="post" action="gadgets/catalogo/ip_temporadas.php">
			<div id="maincontent-tit">
				Agregar Temporada
			</div>
				<div id="maincontent-body">
					<div>
						Nombre:<br>
						<input type="text" name="nombre" size="30"><br>
						Desde:<br>
						<input type="text" name="desde" size="30"><br>
						Hasta:<br>
						<input type="text" name="hasta" size="30"><br>
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