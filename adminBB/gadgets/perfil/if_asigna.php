<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){
	include_once('../classes/conex.php');
	$link=Conectarse();
	include("../library/tinymce.php");
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
?>
		<div id="form-main">
		<form method="post" action="gadgets/perfil/ip_asigna.php">
			<div id="maincontent-tit">
				Asigna comisi�n
			</div>
				<div id="maincontent-body">
					<div>
						Diputado:<br>
			<select name="diputado">
<?php
	$sql_dipu=mysql_query("SELECT id,nombre FROM perfil_index",$link);
	while ($row_dipu=mysql_fetch_array($sql_dipu)){
		echo '<option value="'.$row_dipu[0].'">'.$row_dipu[1].'</a>';
	}
?>
			</select><br><br>
						Comisi�n:<br>
			<select name="comision">
<?php
	$sql_comi=mysql_query("SELECT id,nombre FROM perfil_comisiones ORDER BY nombre ASC ",$link);
	while ($row_comi=mysql_fetch_array($sql_comi)){
		echo '<option value="'.$row_comi[0].'">'.$row_comi[1].'</a>';
	}
?>
			</select><br><br>
			<label for="preside">Preside: </label>
			S�<input type="radio" name="preside" value="1">
			No<input type="radio" name="preside" value="0" checked>
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