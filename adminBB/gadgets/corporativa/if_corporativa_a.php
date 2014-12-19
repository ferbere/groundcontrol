<?php
session_start();
include("../library/tinymce.php");
include("../library/confirm.php");
if(($_SESSION['privilegioss']=="ferbere")||($_SESSION['privilegioss']=="admin")){
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
	<div align="justify">
		<div>
<form method="get" action="corporativa.php">
<input type="hidden" name="ruta" value="ip_corporativa_a.php">
<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
<?php
$sql= mysql_query("SELECT * FROM corporativa_index WHERE id = '$rubro' ",$link);
while ($row = mysql_fetch_array($sql)){
$bole=$row["id"]; 
$seccion=$row['seccion'];
if($row['sistemas2']==1){
	$material='<small> (Cristal Templado)</small>';
}elseif($row['sistemas2']==2){
	$material='<small> (Aluminio)</small>';
}else{
	$material='';
}

?>
	<div>
		<h1>Título:<br></h1>
		<input type="text" name="titulo" size="100px" value="<?php echo $row['titulo'] ?>" /><?php echo $material ?>
	</div><br>
		<div>
			Subtítulo:<br><input type="text" name="subtitulo" size="100px" value="<?php echo $row['subtitulo'] ?>" /><br><br>
		</div>
			<div>
				Imagen:<input type="text" name="imagen" size="30px" value="<?php echo $row['imagen'] ?>" />.jpg<br><br>
			</div>
				<div>
					Orden:<input type="text" name="orden" size="5" value="<?php echo $row['orden'] ?>">
				</div><br><br>
					<div>
						Banner:<br><select name="banner">
<?php
$sqlB=mysql_query("SELECT id,nombre FROM banner_dir ORDER BY id ASC ",$link);
$sqlB2=mysql_query("SELECT MAX(id) as max FROM banner_dir ",$link);
$rowB2=mysql_fetch_array($sqlB2);

while($rowB=mysql_fetch_array($sqlB)){
if($rowB2[0]==$rowE['id']){
$edicion_def=$rowB['nombre'];
}
if($row['banner']!=$rowB['id']){
$hig= 'nain';
}else{$hig="selected";}
echo '<option value="'.$rowB['id'].'"'.$hig.'>'.$rowB['nombre'].'</option>';
}
echo '</select>';
echo '</div>';
if($row['publicado']==0){
$publino="checked";
$publisi="nain";
}elseif($row['publicado']==1){
$publino="nain";
$publisi="checked";
}
?>
	<br><br><div>
Publicado:<br>Sí <input type="radio" name="publicado" value="1" size="30" <?php echo $publisi ?>>
No <input type="radio" name="publicado" value="0" size="30" <?php echo $publino ?>><br><br>
	</div>
		<div style="clear: both">
			Contenido:<br><textarea name="contenido" rows=19 cols=70 width:300px height:40px><?php echo $row['contenido'] ?></textarea>
		</div>
			<div>
				Ruta:<br><select name="rutas">
<?php
$sqlRC=mysql_query("SELECT id,nombre FROM corporativa_rutas ",$link);
while($rowRC=mysql_fetch_array($sqlRC)){
if($row['ruta']!=$rowRC['id']){
	$higRC= 'nain';
}else{
	$higRC="selected";
}
echo '<option value="'.$rowRC['id'].'"'.$higRC.'>'.$rowRC['nombre'].'</option>';
}
echo '</select>';
?>
			</div>
				<div>
					<input type="submit"  value="enviar"></form>
					</div>
	</div>
</div>

<?php
}
?>
<?
}else{
	echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
}
}else{
echo "Usted no tiene acceso a esta sección";
}		
?>
