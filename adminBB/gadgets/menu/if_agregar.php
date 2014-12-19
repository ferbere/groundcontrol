<?php 
session_start();
include("style/header.html");
if(($_SESSION['estado']==Autenticado)AND($_SESSION['privilegios']== "ferbere")){
//require("conex.php");
$link=Conectarse();
?>
	<script language="javascript">
	function MM_popupMsg(msg){
	if (confirm(msg)){
	document.form2.submit();
	}
	}
	</script>
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
					</script>
<?php
$agregar=$_GET['agregar'];

if($agregar==1){ //agregar Post
?>
<div align="left"><table border="0" cellpadding="0">
<h1>Agregar frase célebre</h1>
<tr>
<form method="post" action="ip_agregar.php">
<td>Título<br><input type="text" name="titulo" style="width:100%"><br>
Autor<br><input type="text" name="autor" style="width:65%"><br>
Contenido<br><textarea name="contenido" rows=19 cols=70></textarea><br></td></tr>
<input type="hidden" name="agregar" value="1">
<tr><td>Categoría<br><select name="categoria">
<option value="0">General</a>
<option value="1">Eventos</a>
<option value="2">Sugerencias</a>
<option value="3">Estuve pensando
<option value="4">Frases</select><br><br>
Enlace<br><input type="text" name="enlace" style="width:65%"><br>

<!--Tiempo<br><input type="text" name="tiempo" style="width:65%"><br>-->
<?php
}elseif($agregar==2){ //Agregar liga de amigo
?>
<div align="center"><table width="500" border="0" cellpadding="0">
<h1>Agregar una liga de amigos</h1><br>
<form method="post" action="ip_agregar.php">
<tr><td><h1>Liga:</h1><input type="text" name="liga" style="width:95%"></td></tr>
<tr><td><font size=3>Ruta:</small><br><input type="text" name="ruta" style="width:95%"></h1></td>
<tr><td width="500">Descripción:<br><textarea name="contenido" rows=19 cols=70 width:300px height:40px></textarea></td></tr>
<input type="hidden" name="agregar" value="2">
<?php
}elseif($agregar==10){ // Agregar categorías carta
?>
<div align="center"><table width="500" border="0" cellpadding="0">
<h1>Agregar categoría al Menú </h1><br>
<tr>
<form method="post" action="ip_agregar.php">
<input type="hidden" name="agregar" value="10">
<td align="center">Categoria<br><input type="text" name="categoria" size="20"><br><br>
</td></tr><tr>
<?php
}elseif($agregar==3){ // Agregar carta
?>
<div align="center"><table width="500" border="0" cellpadding="0">
<h1>Agregar contenido a la carta </h1><br>
<tr>
<form method="post" action="ip_agregar.php">
<td align="right">Imagen  <input type="text" name="imagen" size="20">.jpg<br>
Título  <input type="text" name="titulo" style="width:75%"><br>
<input type="hidden" name="agregar" value="3">
Subtítulo  <input type="text" name="subtitulo" style="width:75%"><br>
Descripción<br><textarea name="descripcion" rows=19 cols=70></textarea><br>
Precio    <input type="text" name="precio" size="20">  
Categoría<select name="categoria" >
<?php $sql2=mysql_query("SELECT id,categoria FROM cafeco_categoria_t",$link);
while($row2=mysql_fetch_array($sql2)){
if($row['categoria']!=$row2['id']){
$hig= 'nain';
}else{$hig="selected";}
echo '<option value="'.$row2['id'].'"'.$hig.'>'.$row2['categoria'].'</option>';
}
?>
</select>
</td>
<?php
}elseif($agregar==4){ //Agregar Contenido
?><div align="center">
<table border="0"><tr>
<h1>Agregar contenido organizacional </h1><br>
</tr>	  <tr>
	    <form method="post" action="ip_agregar.php">
	    <td>Título<input type="text" name="titulo" size="25"><br><br>
	    Subtítulo<input type="text" name="subtitulo" size="20"><br><br>
		<input type="hidden" name="agregar" value="4">
	    Nota<br><textarea name="contenido" rows=19 cols=70></textarea><br></td></tr>
	    </td></tr>

<?php
}elseif($agregar==5){ //agregar Autor
?>
<div align="left"><table border="0" cellpadding="0"><br><br>
<h1>Agregar a lista de artistas </h1><br>
<tr>
<form method="post" action="ip_agregar.php">
<td>Autor<br><input type="text" name="nombre_a" style="width:65%"><br><br>
Correo-e<br><input type="text" name="mail_a" style="width:65%"><br><br>
Foto<br><input type="text" name="foto_a" style="width:65%">.jpg<br><br>
Perfil<br><textarea name="perfil" rows=19 cols=70></textarea><br></td></tr>
<input type="hidden" name="agregar" value="5">
<tr><td align="left"><br>Categoría<br><select name="grupo">
<option value="0">Pintura</a>
<option value="1">Gráfica</a>
<option value="2">Fotografía</a>
<option value="3">Escultura y cerámica</a>
<option value="4">Digital</a>
<option value="5">Otros</a>
<?php
}elseif($agregar==6){ // Agregar obra
?>
<div align="center"><table border="0" cellpadding="0">
<br><br><h1>Agregar obra </h1><br><br>
<tr>
<form method="post" action="ip_agregar.php">
<td>Nombre de la foto<br><input type="text" name="imagen" size"10">.jpg<br><br>
Título de la pieza<br><input type="text" name="titulo" style="width:95%"><br><br>
<input type="hidden" name="agregar" value="6">
Autor<br><select name="autor" >
<?php
$sql=mysql_query("SELECT nombre_a FROM cafeco_autores",$link);
while ($row=mysql_fetch_array($sql)){
echo '<option value="'.$row['nombre_a'].'">'.$row['nombre_a'].'</a>';
}
echo '<option value="nombre_a"></select>';
?>
<br><br>Técnica<br><input type="text" name="tecnica" style="width:95%"><br><br>
Medidas</h3><input type="text" name="medidas" style="width:95%"><br><br>
Precio<br><input type="text" name="precio" style="width:95%"><br></td></tr>
<tr><td align="left"><br>Categoría<br></ br><select name="grupo">
<option value="0">Pintura</a>
<option value="1">Gráfica</a>
<option value="2">Fotografía</a>
<option value="3">Escultura y cerámica</a>
<option value="4">Digital</a>
<option value="5">Otros</a>
</td>
<?php
}elseif($agregar==7){ // Agregar Eventos
?>
<div align="center"><table border="0" width="600" cellpadding="0">
<br><br><h1>Agregar evento nuevo </h1><br><br>
<tr>
<form method="post" action="ip_agregar.php">
<td colspan="2" align="left">Evento<br><input type="text" name="evento" style="width:95%"><br><br>
Fecha<br><input type="text" name="fecha" style="width:20"></td></tr>
<input type="hidden" name="agregar" value="7">
<tr><td colspan="2" align="left"><br>Categoría<br><select name="categoria">
<option value="0">Exposición</a>
<option value="1">Música</a>
<option value="2">Social</a>
<option value="3">Otros</a>
</td></tr>
<tr><td colspan="2" align="left"><br>Descripción<br><textarea name="descripcion" rows=19 cols=70></textarea><br></td></tr>
<?php
}elseif($agregar==8){ //Agregar Tips Gourmet
?><div align="center">
<table border="0"><tr>
<h1>Agregar Caf-Eco nota </h1><br>
</tr><tr>
<form method="post" action="ip_agregar.php">
<td align="left">Título<br><input type="text" name="titulo" size="100%"><br>
Subtítulo<br><input type="text" name="subtitulo" size="100%"><br>
<input type="hidden" name="agregar" value="8">
Nota<br><textarea name="contenido" rows=19 cols=70></textarea><br>
Publicado<br><select name="publicado">
<option value="0">Borrador</option>
<option value="1">Publicado</option>
</td></tr>
</td></tr>

<?php
}elseif($agregar==9){ // Agregar foto Eventos 
$sql=mysql_query("SELECT id,evento FROM cafeco_eventos",$link);
?>
<div align="center"><table border="0" width="600" cellpadding="0">
<br><br><h1>Agregar foto de evento </h1><br><br>
<tr>
<form method="post" action="ip_agregar.php">
<td colspan="2" align="left">
Nombre de la foto<br><input type="text" name="imagen" size"10">.jpg</td></tr>
<input type="hidden" name="agregar" value="9">
<tr><td colspan="2" align="left"><br>Evento<br>
<select name="evento">
<?php
while ($row=mysql_fetch_array($sql)){
echo '<option value="'.$row['id'].'">'."\n".$row['evento']."</a><br>";
}
?>
</td></tr>
<tr><td colspan="2" align="left"><br>Descripción<br><textarea name="descripcion" rows=19 cols=70></textarea><br></td></tr>
<?php
}elseif($agregar==11){//Agregar red social
$sql=mysql_query("SELECT id FROM cafeco_social",$link);
$cuenta=mysql_num_rows($sql);
$sug=($cuenta+1);
?><div align="center">
<table border="0"><tr>
<br><h1>Agregar información a Red Social </h1><br><br>
</tr>	  <tr>
<form method="post" action="ip_agregar.php">
<td align="left">Título<br><input type="text" name="titulo" size="80"><br><br>
Imagen<br><small>(imagen sugerida <?php echo $sug ?>.jpg)</small><br><input type="text" name="imagen" size="15">.jpg<br><br>
<input type="hidden" name="agregar" value="11">
Participan<textarea name="participan" rows=19 cols=70></textarea><br></td></tr>
</td></tr>
<?php
}elseif($agregar==14){ //Agregar contactos
?><div align="center">
<table border="0"><tr>
<h1>Agregar un nuevo Contacto </h1><br>
</tr><tr>
<form method="post" action="ip_agregar.php">
<td align="left">Nombre<br><input type="text" name="nombre" size="100%"><br>
Apellidos<br><input type="text" name="apellidos" size="100%"><br>
<input type="hidden" name="agregar" value="14">
e-mail<br><input type="text" name="mail" size="50"><br>
</td></tr>
</td></tr>

<?php
}
?>
<td valign="bottom"><input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar"></form></td>
<td></td></tr>
</table></div>

<?php
}else{
echo "<br><div align='center'> Usted no tiene acceso a esta sección</div>";
}
include("style/footer.html"); ?>