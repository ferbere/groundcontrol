<?php
session_start();
if(isset($_SESSION['carro']))
$carro=$_SESSION['carro'];else $carro=false;

include("../library/tinymce.php");
include("../library/confirm.php");
if(isset($_GET['capturado'])){
	$capturado=$_GET['capturado'];
}
if(empty($capturado)){
?>
<div id="form-main">
	<form method="post" action="comprar.php">
	<div id="maincontent-tit">
		<h1>Segmentos Especiales</h1><br><br>
	</div>
		<div id="maincontent-body">
			<div align="left">
				<div>
					Medidas:<br>
					<input type="text" name="medidas" size="50%"><br><br>
					Corte proximal:<br>
					<input type="text" name="corte_proximal" size="50%"><br><br>
					Corte distal:<br>
					<input type="text" name="corte_proximal" size="50%"><br><br>
					Con cartilago:<br>
					Sí<input type="radio" name="cartilago" value="1">
					No<input type="radio" name="cartilago" value="0" checked><br><br>
					Con tejidos blandos:<br>
					Sí<input type="radio" name="blandos" value="1">
					No<input type="radio" name="blandos" value="0" checked><br><br>

				</div>
			</div>
				<div style="clear: both">
					<div><h2>Caracterísitcas del receptor</h2>
					Sexo:<br>
					F<input type="radio" name="blandos" value="1" checked>
					M<input type="radio" name="blandos" value="0"><br><br>
					Edad:<br>
					<input type="text" name="edad" size="20"> años<br><br>
					Talla:<br>
					<input type="text" name="talla" size="20"><br><br>
 					Peso:<br>
					<input type="text" name="peso" size="20"><br><br>
					Complexión:<br>
					<input type="text" name="complexion" size="20"><br><br>
</div>
					</div>
				<div>
					<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
					</form>
				</div>
		</div>
	</div>
<?php
	}else{
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}
?>