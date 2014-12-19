<?php
session_start();
if($_SESSION["privilegioss"]=="ferbere"){
include("../library/tinymce.php");
include("../library/confirm.php");
if(isset($_GET['capturado'])){
$capturado=$_GET['capturado'];
}
if(empty($capturado)){
$link=Conectarse();	
?>
	<div id="form-main">
			<div>
				<form method="post" action="gadgets/gadgets/ip_botones.php">
				<h1>Agregar Botones al Menú</h1>
			</div>
				<div align="justify" style="height:80px">
					<div style="float:left">
						Nombre:<br><input type="text" name="nombre" size="30">
					</div>
						<div style="float: left; position: relative; left: 50px">
							Imagen:<br><input type="text" name="imagen" size="30">
						</div>
							<div style="float: left; position: relative; left: 80px">
								Extensión:<br><select name="ext">
<?php

	$sql=mysql_query("SELECT id,nombre FROM general_ext",$link);
	while ($row=mysql_fetch_array($sql)){
		echo '<option value="'.$row['id'].'">'."\n".$row['nombre']."</a>";
	}
?>
						</select>
							</div>
				</div>
					<div>
						<div style="float: left; position: relative">
							Ruta:<br><input type="text" name="ruta" size="30">
						</div>
							<div style="float: left; position: relative; left: 50px">
								Posición:<br><select name="posicion">
<?php

	$sql2=mysql_query("SELECT id,nombre FROM gadgets_posicion" ,$link);
	while ($row2=mysql_fetch_array($sql2)){
		echo '<option value="'.$row2['id'].'">'."\n".$row2['nombre']."</a>   ";
	}
?>
						</select>

							</div>
								<div style="float: left; position: relative; left: 80px">
									Submenú:<br>
									<input type="radio" name="submenu" value="0" checked>No
									<input type="radio" name="submenu" value="1">Sí<br>
							</div>
					</div>
						<div style="clear: both">
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