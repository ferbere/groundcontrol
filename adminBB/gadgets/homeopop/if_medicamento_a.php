<?php
session_start();
if(($_SESSION["privilegioss"]=="directivo")||($_SESSION["privilegioss"]=="ferbere")){
	include_once('../classes/mysql.php');
	$mysql = new MySQL();
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
	if(empty($capturado)){
		$sql=mysql_query("SELECT id,nombre FROM homeopop_medicamentos WHERE id = '$rubro' ");
		while($row=mysql_fetch_array($sql)){
			$id=$row[0];
			$nombre=$row[1];
		}
?>
		<div id="form-main">
		<form method="post" action="gadgets/homeopop/ip_medicamento_a.php">
			<div id="maincontent-tit">
				Modificar medicamento
			</div>
				<div id="maincontent-body">
					<div>
						Nombre:<br>
						<input type="text" name="nombre" value="<?php echo $nombre ?>" size="30"><br>
					</div>
						<div>
							<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
							<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
							</form>
						</div>
		</div>
<?php
	}elseif($capturado==1){
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}elseif($capturado==2){
		echo "Usted no tiene acceso a esta seccción";
	}
}else{
	echo "Usted no tiene acceso a esta seccción";
}
?>