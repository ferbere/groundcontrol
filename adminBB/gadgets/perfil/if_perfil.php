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
			$sql_cat=mysql_query("SELECT * FROM perfil_categoria",$link);
?>
		<div id="form-main">
		<form method="post" action="gadgets/perfil/ip_perfil.php">
			<div id="maincontent-tit">
				Agregar perfil de Diputado
			</div>
				<div id="maincontent-body">
					<div>
                        Nombre:<br>
			<input type="text" name="nombre" size="80%"><br><br>
                        Distrito:<br>
			<input type="text" name="distrito" size="80%"><br>
                        Visible:
			<input type="radio" name="visible" value="0">No  
			<input type="radio" name="visible" value="1" checked>S�<br><br>
						Elecci�n:<br>
			<select name="categoria">
<?php
	while ($row_cat=mysql_fetch_array($sql_cat)){
		echo '<option value="'.$row_cat['id'].'">'.$row_cat['nombre'].'</a>';
	}
?>
			</select><br><br>
                        Descripci�n:<br>
			<textarea name="descripcion" rows=10 cols=80 ></textarea><br><br>
                        Imagen:<br>
			<input type="text" name="imagen">
			<select name="ext">
			<?php
			$sql_ext=mysql_query("SELECT id,nombre FROM general_ext",$link);
			while($row_ext=mysql_fetch_array($sql_ext)){
				echo '<option value="'.$row_ext['id'].'">'.$row_ext['nombre'].'</option>';
			}
			?>
			</select>
			<br><br>
	                Sala:<br>
		<input type="text" name="sala"><br><br>
	                Tel�fonos:<br>
		<input type="text" name="telefonos"><br><br>
	                e-mail:<br>
		<input type="text" name="email"><br><br>
	                Casa de enlace:<br>
		<textarea name="enlace" cols="80" rows="4"></textarea><br><br>
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