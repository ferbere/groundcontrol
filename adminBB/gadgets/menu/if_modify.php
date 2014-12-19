<?php 
session_start();
include("style/header.html");
if($_SESSION['privilegios']== "ferbere"){
//require("conex.php");
$link=Conectarse();
//error_reporting(E_ALL);
//@ini_set('display_errors', '1');
if(isset($_GET["rubro"])){
if(isset($_GET['modify'])){
$rubro=$_GET['rubro'];
$modify=$_GET['modify'];
}
}
?>
	<head>
	<script type="text/javascript" src="library/tinymce/tiny_mce.js"></script>
	<script type="text/javascript">
	tinyMCE.init({
	// General options
	mode : "textareas",
	theme : "advanced",
	plugins : "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",

					// Theme options
					theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
					theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
					theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
					theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
					theme_advanced_toolbar_location : "top",
					theme_advanced_toolbar_align : "left",
					theme_advanced_statusbar_location : "bottom",
					theme_advanced_resizing : true,

					// Example content CSS (should be your site CSS)
					content_css : "css/example.css",

					// Drop lists for link/image/media/template dialogs
					template_external_list_url : "js/template_list.js",
					external_link_list_url : "js/link_list.js",
					external_image_list_url : "js/image_list.js",
					media_external_list_url : "js/media_list.js",

					// Replace values for the template plugin
					template_replace_values : {
						username : "Some User",
						staffid : "991234"
					}
				});
				</script>	</head>

	<script language="javascript">
	function MM_popupMsg(msg){
	if (confirm(msg)){
	document.form2.submit();
	}
	}
	</script>
<div align="center">
		<table width="500" border="0" cellpadding="0">
		  <tr align="center"><td colspan="2" align="right"><a href="<?php echo $_SERVER["HTTP_REFERER"]; ?>"><< Volver</a></td></tr><tr>
		<form method="get" action="ip_modify.php">
		<input type="hidden" name="rubro" value="<?php print $rubro?>">
		<input type="hidden" name="modify" value="<?php print $modify?>">
<?php if($modify==1){//Post
$sql=mysql_query("SELECT * FROM cafeco_post WHERE id_post = '$rubro'", $link);
while ($row=mysql_fetch_array($sql)){
/*$grupo_array=array(0=>"General",1=>"Eventos",2=>"Sugerencias",3=>"Estuve pensando",4=>"Frases");*/
$categoria=$row['categoria'];
?>
<h1>Modificar Frases Célebres</h1>
<td>Frase:<br><input type="text" name="titulo" style="width:95%" value="<?php echo $row['titulo'] ?>" /><br>
<br>Autor<br><input type="text" name="autor" style="width:95%" value="<?php echo $row['autor'] ?>" /><br>
<br>Categoría:<br>
<select name="categoria" size="5" style="width:150px">
<option value="0" <?php if ($categoria == "0"){ echo "selected"; } ?>>General</a>
<option value="1" <?php if ($categoria == "1") echo "selected"; ?>>Eventos</option>
<option value="2" <?php if ($categoria == "2") echo "selected"; ?>>Sugerencias</option>
<option value="3" <?php if ($categoria == "3") echo "selected"; ?>>Estuve pensando</option>
<option value="4" <?php if ($categoria == "4")  echo "selected"; ?>>Frases</option>
</select>
</td></tr>
<tr><td colspan="2">Contenido:<br><textarea name="contenido" rows=19 cols=70 width:300px height:40px><?php echo $row['contenido'] ?></textarea><br></td></tr>
<?php }
}elseif($modify==2){//Ligas
echo '<h1>Modificar ligas de amigos</h1>';
$sql = mysql_query("SELECT * FROM cafeco_ligas WHERE id = '$rubro' ",$link);
while ($row = mysql_fetch_array($sql)) {
$bole=$row["id"];
?>
<td>Liga<br><input type="text" name="liga" style="width:95%" value="<?php echo $row['liga'] ?>" /><br>
Ruta<br><input type="text" name="ruta" style="width:45%" value="<?php echo $row['ruta'] ?>" />.jpg<br></td></tr>
<tr><td width="500">Descripción:<br><textarea name="contenido" rows=19 cols=70 width:300px height:40px><?php echo $row['contenido'] ?></textarea></td></tr>
<input type="hidden" name="rubro" value="<?php print $bole?>">
<input type="hidden" name="modify" value="2">
<?php }
}elseif($modify==10){//Modifica categorías menu 
echo '<h1>Modificar Categorías del Menú</h1>';
$sql=mysql_query("SELECT * FROM cafeco_categoria_t WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
?>
<td ><h3>Id:<br></h3><input type="text" name="id" size="5" value="<?php echo $row['id'] ?>" /><br>
Categoría:<br><input type="text" name="categoria" style="width:95%" value="<?php echo $row['categoria'] ?>" /><br>
</td></tr>
<?php }
}elseif($modify==3){//Menu
echo '<h1>Modificar contenido de la carta</h1>';
$sql=mysql_query("SELECT * FROM cafeco_menu_t WHERE id = '$rubro'", $link);
while ($row=mysql_fetch_array($sql)){
?>
<td valign="top">Platillo:<br><img src="images/<?php  echo $row['imagen'] ?>.jpg" width="200"  /></td>
<td colspan="2">Título:<br><input type="text" name="titulo" style="width:95%" value="<?php echo $row['titulo'] ?>"/><br>
<br>Subtítulo:<br><input type="text" name="subtitulo" style="width:95%" value="<?php echo $row['subtitulo'] ?>"/><br>
<br>Contenido:<br><textarea name="descripcion" rows=19 cols=70 width:300px height:40px><?php echo $row['descripcion'] ?></textarea><br></td></tr>
<tr><td>Precio:<br><input type="text" name="precio" value="<?php echo number_format($row['precio'],2) ?>" onfocus="if(this.value=='<?php echo $row['tecnica'] ?>')this.value=''" /></td>
<td>Categoría:<br>
<select name="categoria" size="5" style="width:150px">
<?php $sql2=mysql_query("SELECT id,categoria FROM cafeco_categoria_t",$link);
while($row2=mysql_fetch_array($sql2)){
if($row['categoria']!=$row2['id']){
$hig= 'nain';
}else{$hig="selected";}
echo '<option value="'.$row2['id'].'"'.$hig.'>'.$row2['categoria'].'</option>';
}
?>
</select></td>
<td>Imagen:<input type="text" name="imagen" value="<?php echo $row['imagen'] ?>" onfocus="if(this.value=='<?php echo $row['imagen'] ?>')this.value=''" />.jpg<br></td></tr>
<?php }
}elseif($modify==4){//Contenido
echo '<h1>Modificar contenido organizacional</h1>';
$sql=mysql_query("SELECT * FROM cafeco_contenido WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
?>
<td>Título:<br><input type="text" name="titulo" style="width:95%" value="<?php echo $row['titulo'] ?>" onfocus="if(this.value=='<?php echo $row['titulo'] ?>')this.value=''" /><br>
Subtítulo:<input type="text" name="subtitulo" style="width:95%" value="<?php echo $row['subtitulo'] ?>" onfocus="if(this.value=='<?php echo $row['subtitulo'] ?>')this.value=''" /><br>
Contenido:<textarea name="contenido" rows=19 cols=70 width:300px height:40px><?php echo $row['contenido'] ?></textarea></td></tr>
<?php }
}elseif($modify==5){//Artistas
echo '<h1>Modificar información artista</h1>';
$sql=mysql_query("SELECT * FROM cafeco_autores WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
$categoria=$row['grupo'];
?>
<td align="left">Nombre:<br><input type="text" name="nombre_a" style="width:95%" value="<?php echo $row['nombre_a'] ?>" /><br>
e-mail:<input type="text" name="mail_a" style="width:95%" value="<?php echo $row['mail_a'] ?>" /><br>
Foto:<br><input type="text" name="foto_a" style="width:35%" value="<?php echo $row['foto_a'] ?>" />.jpg<br>
Perfil:<textarea name="perfil" rows=19 cols=70 width:300px height:40px><?php echo $row['perfil'] ?></textarea></td></tr>
<tr><td align="left"><br>Categoría<br></ br><select name="grupo">
<option value="0" <?php if ($categoria == "0"){ echo "selected"; } ?>>Pintura</a>
<option value="1" <?php if ($categoria == "1"){ echo "selected"; } ?>>Gráfica</a>
<option value="2" <?php if ($categoria == "2"){ echo "selected"; } ?>>Fotografía</a>
<option value="3" <?php if ($categoria == "3"){ echo "selected"; } ?>>Escultura y cerámica</a>
<option value="4" <?php if ($categoria == "4"){ echo "selected"; } ?>>Digital</a>
<option value="5" <?php if ($categoria == "5"){ echo "selected"; } ?>>Otros</a>
</td></tr>
<?php }
}elseif($modify==6){//Obra
echo '<h1>Modificar información obra</h1>';
$sql=mysql_query("SELECT * FROM cafeco_obra WHERE id = '$rubro'", $link);
while ($row=mysql_fetch_array($sql)){
$categoria=$row['grupo'];
$status=$row['vendido'];
?>
<td valign="top" align="left"><img src="images/<?php  echo $row['imagen'] ?>.jpg" width="200"  /></td>
<td align="left">Autor:<br><input type="text" name="autor" style="width:95%" value="<?php echo $row['autor'] ?>"/><br>
Título:<br><input type="text" name="titulo" style="width:95%" value="<?php echo $row['titulo'] ?>" /><br>
<br>Técnica:<br><input type="text" name="tecnica" style="width:95%" value="<?php echo $row['tecnica'] ?>"/><br>
<br>Medidas:<br><input type="text" name="medidas" style="width:95%" value="<?php echo $row['medidas'] ?>"/><br>
<br>Precio:<br><input type="text" name="precio" style="width:95%" value="<?php echo number_format($row['precio'],2) ?>" /><br>
<br>Grupo:<br>
<select name="grupo" size="5" style="width:150px">
<option value="0" <?php if ($categoria == "0") echo "selected";  ?>>Pintura</a>
<option value="1" <?php if ($categoria == "1") echo "selected"; ?>>Gráfica</option>
<option value="2" <?php if ($categoria == "2") echo "selected"; ?>>Fotografía</option>
<option value="3" <?php if ($categoria == "3") echo "selected"; ?>>Escultura y cerámica</option>
<option value="4" <?php if ($categoria == "4")  echo "selected"; ?>>Digital</option>
<option value="5" <?php if ($categoria == "5")  echo "selected"; ?>>Otra</option>
</select></td></tr>
<tr><td align="left">Imagen:<br><input type="text" name="imagen" style="width:75%" value="<?php echo $row['imagen'] ?>"/>.jpg<br></td>
<td align="left">Status:<br>
<select name="vendido" size="5" style="width:150px">
<option value="0" <?php if ($status == "0") echo "selected";  ?>>En venta</a>
<option value="1" <?php if ($status == "1") echo "selected"; ?>>Vendido</option>
</select>    
</td></tr>
<?php }
}elseif($modify==7){//Evento
echo '<h1>Modificar información eventos</h1>';
$sql=mysql_query("SELECT * FROM cafeco_eventos WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
$publicado=$row['publicado'];
$categoria=$row['categoria'];
include("funciones.php");
fechanormal();
?>
<td align="left" colspan="2">Evento:<br><input type="text" name="evento" style="width:95%" value="<?php echo $row['evento'] ?>"/><br>
<br>Categoría:<select name="categoria"><br>
	<option value="0" <?php if ($categoria == "") echo "selected";  ?>>Ninguna</a>
	<option value="0" <?php if ($categoria == "0") echo "selected";  ?>>Exposición</a>
	<option value="1" <?php if ($categoria == "1") echo "selected";  ?>>Música</a>
	<option value="2" <?php if ($categoria == "2") echo "selected";  ?>>Social</a>
	<option value="3" <?php if ($categoria == "3") echo "selected";  ?>>Otros</option>
</select><br>
<br>Descripción:<textarea name="descripcion" rows=19 cols=70 width:300px height:40px><?php echo $row['descripcion'] ?></textarea><br>
<br>Fecha:<input type="text" name="fecha" size="10" value="<?php echo fechanormal($row['fecha']) ?>" /><br>
</td></tr>
<?php }
}elseif($modify==8){//Caf-Eco notas
echo '<h1>Modificar Caf-Eco notas</h1>';
$sql=mysql_query("SELECT * FROM cafeco_tipsgourmet WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
$publicado=$row['publicado'];
?>
<td align="left" colspan="2">Título:<br><input type="text" name="titulo" style="width:95%" value="<?php echo $row['titulo'] ?>" onfocus="if(this.value=='<?php echo $row['titulo'] ?>')this.value=''" /><br>
<br>Subtítulo:<input type="text" name="subtitulo" style="width:95%" value="<?php echo $row['subtitulo'] ?>" onfocus="if(this.value=='<?php echo $row['subtitulo'] ?>')this.value=''" /><br>
<br>Contenido:<textarea name="contenido" rows=19 cols=70 width:300px height:40px><?php echo $row['contenido'] ?></textarea>
</td></tr><tr><td>
Publicado:<br>
<select name="publicado" size="5" style="width:150px">
<option value="0" <?php if ($publicado == "0") echo "selected";  ?>>Borrador</a>
<option value="1" <?php if ($publicado == "1") echo "selected"; ?>>Públicado</option>
</select>
</td><td>Imagen:<input type="text" name="imagen" value="<?php echo $row['imagen'] ?>" />.jpg</td>
</tr>
<?php }
}elseif($modify==9){//Evento cambiar foto
echo '<h1>Modificar foto de evento</h1>';
$sql=mysql_query("SELECT * FROM cafeco_eventofoto WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
?>
<td align="left" colspan="2">Imagen:<br><input type="text" name="imagen" style="width:45%" value="<?php echo $row['imagen'] ?>"/><br>
<br>Evento:<br><select name="evento">
<?php
$sql2=mysql_query("SELECT id,evento FROM cafeco_eventos",$link);
while($row2=mysql_fetch_array($sql2)){
if($row['evento']!=$row2['id']){
$hig= 'nain';
}else{$hig="selected";}
echo '<option value="'.$row2['id'].'"'.$hig.'>'.$row2['evento'].'</option>';
}
?>
</td></tr><tr><td align="left">
<br>Descripción:<textarea name="descripcion" rows=19 cols=70 width:300px height:40px><?php echo $row['descripcion'] ?></textarea><br>
</td></tr>
<?php }
}elseif($modify==11){//Red social
$sql=mysql_query("SELECT * FROM cafeco_social WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
?>
<h1>Modificar datos de Red Social</h1> 
<td>Título:<br><input type="text" name="titulo" style="width:95%" value="<?php echo $row['titulo'] ?>"/><br>
<br>Imagen:<input type="text" name="imagen" style="width:45%" value="<?php echo $row['imagen'] ?>"/>.jpg<br>
<br>Participan:<br><textarea name="participan" rows=19 cols=70 width:300px height:40px><?php echo $row['participan'] ?></textarea></td></tr>
<?php }
}elseif($modify==14){//Contactos
$sql=mysql_query("SELECT * FROM cafeco_contactos WHERE id = '$rubro'",$link);
while ($row=mysql_fetch_array($sql)) {
$bole=$row["id"]; 
?>
<h1>Modificar información de:  <?php echo $row['nombre']."\n".$row['apellidos'] ?> </h1> 
<td>Nombre:<br><input type="text" name="nombre" style="width:95%" value="<?php echo $row['nombre'] ?>" onfocus="if(this.value=='<?php echo $row['titulo'] ?>')this.value=''" /><br>
Apellidos:<input type="text" name="apellidos" style="width:95%" value="<?php echo $row['apellidos'] ?>" onfocus="if(this.value=='<?php echo $row['subtitulo'] ?>')this.value=''" /><br>
e-mail:<br><input type="text" name="mail" size="65%" value="<?php echo $row['mail'] ?>"></td></tr>
<?php }
}

?>
<tr><td valign="bottom"><input type="submit"  value="enviar"></form></td>
<td></td></tr>
</table></div>
<?php

}else{
	
echo "<br><div align='center'>Usted no tiene acceso a esta sección</div>";
}
include("style/footer.html"); ?>

