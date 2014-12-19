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
			$sql=mysql_query("SELECT * FROM catalogo_categoria",$link);
?>
		<div id="form-main">
		<form method="post" action="gadgets/catalogo/ip_catalogo.php">
			<div id="maincontent-tit">
				Agregar valor al catálogo
			</div>
				<div id="maincontent-body">
					<div>
                        Nombre:<br>
			<input type="text" name="nombre" size="80%"><br><br>
                        Subnombre:<br>
			<input type="text" name="subnombre" size="80%"><br>
                        Visible:
			<input type="radio" name="visible" value="0">No  
			<input type="radio" name="visible" value="1" checked>Sí<br><br>
						Categoría:<br>
			<select name="categoria">
<?php
	while ($row=mysql_fetch_array($sql)){
		echo '<option value="'.$row['id'].'">'.$row['nombre'].'</a>';
	}
?>
			</select><br><br>
                        Descripción:<br>
			<textarea name="descripcion" rows=10 cols=80 ></textarea><br><br>
                        Imagen:<br>
			<input type="text" name="imagen">
			<select name="ext">
			<?php
			$sql_ext=mysql_query("SELECT id,nombre FROM catalogo_ext",$link);
			while($row_ext=mysql_fetch_array($sql_ext)){
				echo '<option value="'.$row_ext['id'].'">'.$row_ext['nombre'].'</option>';
			}
			?>
			</select>
			<br><br>
	                Precio Temporada Baja:<br>
		us$<input type="text" name="precio_baja"><br><br>
	                Precio Temporada Alta:<br>
		us$<input type="text" name="precio_alta"><br><br>
	                Precio Temporada Altísima:<br>
		us$<input type="text" name="precio_altisima"><br><br>
	                Precio Temporada Alta 2da:<br>
		us$<input type="text" name="precio_alta2"><br><br>
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