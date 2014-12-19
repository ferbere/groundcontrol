<?php
session_start();
include("../library/tinymce.php");
include("../library/confirm.php");
if(($_SESSION['privilegioss']=="ferbere")||($_SESSION['privilegioss']=="directivo")){
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
	?>
	<div id="form-main">
		<form method="post" action="gadgets/homeopop/ip_medicamento.php">
		<div id="maincontent-tit">
			Añadir medicamento<br>
		</div>
			<div id="maincontent-body">
				<div>
					Nombre:<br>
					<input type="text" name="nombre"><br><br>
				</div>
				<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
				</form>
			</div>
		</div>
	<?php
	}elseif($capturado==1){
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}elseif($capturado==2){
		echo "No se capturó.";
	}
}else{
echo "Usted no tiene acceso a esta sección";
}		

?>