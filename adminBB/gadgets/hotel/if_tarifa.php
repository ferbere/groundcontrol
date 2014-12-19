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
		<form method="post" action="gadgets/hotel/ip_tarifa.php">
			<div id="maincontent-tit">
				Agregar tarifa
			</div>
				<div id="maincontent-body">
					<div>
                        Nombre:<br>
			<input type="text" name="nombre" placeholder="nombre">
			<br><br>
			            Cantidad<br>
			<input type="number" name="cantidad" placeholder="0.00">
			<br><br>
						Moneda:<br>
						<select name="moneda">
<?php
$sqlMon=mysql_query("SELECT id,nombre FROM hotel_moneda ORDER BY id ASC ",$link);
while($rowMon=mysql_fetch_array($sqlMon)){
?>
<option value="<?php echo $rowMon['id']; ?>">
<?php echo $rowMon['nombre'];?>
</option>
<?php }
?>
						</select><br><br>
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