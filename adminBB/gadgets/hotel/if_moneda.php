<?php
session_start();
if(($_SESSION['privilegioss']=='ferbere')||($_SESSION['privilegioss']=='directivo')){
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
?>
		<div id="form-main">
		<form method="post" action="gadgets/hotel/ip_moneda.php">
			<div id="maincontent-tit">
				Agregar moneda
			</div>
				<div id="maincontent-body">
					<div>
                        Moneda:<br>
			<input type="text" name="nombre" placeholder="nombre">
			<br><br>
			            Tipo de cambio<br>
			<input type="number" name="cambio" placeholder="0.00">
			<br><br>
					</div>
						<div>
							<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
		</form>
					</div>
	</div>
<?php
	}else{
		echo "El contenido ha sido capturado, debidamente. �Muy bien!";
	}
}else{
	echo "Usted no tiene acceso a esta seccci�n";
}
 ?>