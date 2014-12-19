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


<table border="0" cellpadding="0" width="600" align="center">
<form method="post" action="gadgets/corporativa/ip_corporativa.php" name="fvalida">
<?php
$sql=mysql_query("SELECT id,nombre FROM corporativa_rutas",$link);
if(($_SESSION['privilegioss']=='ferbere')OR($_SESSION['privilegioss']=='superadmin')){
$sql2=mysql_query("SELECT id,nombre FROM user" ,$link);
}else{
$sql2=mysql_query("SELECT id,nombre FROM user WHERE id = ".$_SESSION['id'] ,$link);
}
?>
<tr><td colspan="3"><h1>Agregar información Corporativa</h1></td></tr>
<tr><td colspan="3">Título:<br><input type="text" name="titulo" size="80%"><br>
Subtítulo:<br><input type="text" name="subtitulo" size="80%"><br></td></tr>
<tr><td>
Imagen:<input type="text" name="imagen" size="30">.jpg
	</td>
		<td>

	</td>
<td>Ruta:  <select name="ruta">
<?php
while ($row=mysql_fetch_array($sql)){
echo '<option value="'.$row['id'].'">'."\n".$row['nombre']."</a>   ";
}
?>
</select>

</td>

</tr>
<tr><td colspan="3">Contenido:<br><textarea name="contenido" rows=19 cols=80 width:300px height:40px></textarea><br></td></tr>
<tr><td><?php if(($_SESSION['privilegioss']=='ferbere')OR($_SESSION['privilegioss']=='ferbere')){
?>Publicado:<br>Sí <input type="radio" name="publicado" value="1" size="30">
No <input type="radio" name="publicado" value="0" size="30" checked><?php } ?></td>
<td>Autor:  <select name="autor">
<?php
while ($row2=mysql_fetch_array($sql2)){
echo '<option value="'.$row2['id'].'">'."\n".$row2['nombre']."</a>   ";
}
?>
</select>

</td>
</tr>
<td valign="bottom"><input type="submit" value="enviar"></form></td>
<td colspan="2"></td></tr>
</table>
<?php
}else{
	echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
}
}else{
echo "Usted no tiene acceso a esta seccción";
}
?>