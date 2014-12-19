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
		<form method="post" action="gadgets/eventos/ip_evento_foto.php">
			<div id="maincontent-tit">
				Agregar foto a evento
			</div>
				<div id="maincontent-body">
					<div>
							Nombre:<br>
			<input type="text" name="nombre" size="50"><br><br>
							Participan:<br>
			<textarea name="participan" rows=19 cols=70 width:300px height:40px></textarea><br>
							Imagen:<br>
			<input type="text" name="imagen" size="50">.jpg<br></br>
			<select name="evento">
				<option value="0" checked>Ninguno</option>
			<?php
			$sql=mysql_query("SELECT id,nombre FROM eventos_index",$link);
			while($row=mysql_fetch_array($sql)){
				echo '<option value="'.$row['id'].'">'.$row['nombre'].'</option>';
			}
			?>
			</select><br><br>

							Visible:</br>
			<input type="radio" name="visible" value="0" checked>No  
			<input type="radio" name="visible" value="1">Sí  
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