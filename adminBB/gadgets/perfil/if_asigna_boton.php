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
		<form method="post" action="gadgets/perfil/ip_asigna_boton.php">
			<div id="maincontent-tit">
				Asigna bot�n social
			</div>
				<div id="maincontent-body">
					<div>
						Diputado:<br>
			<select name="diputado">
<?php
	$sql_dipu=mysql_query("SELECT id,nombre FROM perfil_index ORDER BY orden ASC",$link);
	while ($row_dipu=mysql_fetch_array($sql_dipu)){
		echo '<option value="'.$row_dipu[0].'">'.$row_dipu[1].'</a>';
	}
?>
			</select><br><br>
						Bot�n social:<br>
			<select name="boton_social">
<?php
	$sql_comi=mysql_query("SELECT id,nombre FROM perfil_boton_social ORDER BY nombre ASC ",$link);
	while ($row_comi=mysql_fetch_array($sql_comi)){
		echo '<option value="'.$row_comi[0].'">'.$row_comi[1].'</a>';
	}
?>
			</select><br><br>
			<label for="cuenta">Cuenta: </label>
			<input type="text" name="cuenta" size="50%"><br><br>
			<label for="url">URL: </label>
			<input type="text" name="url" size="80%"><br>
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