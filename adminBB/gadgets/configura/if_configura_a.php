<?php
session_start();
include("../library/confirm.php");
if($_SESSION['privilegioss']=="ferbere"){
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
		$link=Conectarse();
		if(isset($_GET['rubro'])){
			$rubro=$_GET['rubro'];
		}
?>
<div id="form-main">
			<form method="post" action="gadgets/configura/ip_configura_a.php">
	<div id="maincontent-tit">
		Configuración General<br><br>
	</div>
		<div id="maincontent-body">
			<div>
<?php
	$sql=mysql_query("SELECT * FROM template_general",$link);
	while($row=mysql_fetch_array($sql)){
		$titulo=$row['titulo'];
		$subtitulo=$row['subtitulo'];
		$dia=$row['dia'];
		$noche=$row['noche'];
		$correo1=$row['correo1'];
		$metatags=$row['metatags'];
	}
?>
		Título de la página:<br>
		<input type="text" name="titulo" style="width:400px" value="<?php echo $titulo ?>"><br>
		Subtitulo de la página:<br>
		<input type="text" name="subtitulo" style="width:400px" value="<?php echo $subtitulo ?>"><br>
		Inicio día en la página:<br>
		<input type="text" name="dia" style="width:400px" value="<?php echo $dia ?>"><br>
		Inicio noche en la página:<br>
		<input type="text" name="noche" style="width:400px" value="<?php echo $noche ?>"><br>
		Correo:<br>
		<input type="text" name="correo1" style="width:200px" value="<?php echo $correo1 ?>"><br>
		Palabras Clave:<br>
		<textarea name="metatags" rows=19 cols=70 width:300px height:40px><?php echo $metatags; ?></textarea>
			</div>
				<div>
					<input type="submit"  value="enviar"><br><br>
			</form>
				</div>
		</div>
</div>
<?
}else{
	echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
}
}else{
echo "Usted no tiene acceso a esta sección";
}
?>
