<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){
	$link=Conectarse();
	include_once("tinymce.php");
	include_once("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
?>		<script type="text/javascript" src="../library/tinymce/tiny_mce.js"></script>
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
		<div id="form-main">
		<form method="post" action="gadgets/eventos/ip_evento.php">
			<div id="maincontent-tit">
				Agregar evento
			</div>
				<div id="maincontent-body">
					<div>
							Nombre:<br>
			<input type="text" name="nombre" size="50"><br><br>
							Fecha:<br>
			<input type="text" name="fecha" size="50"><br><br>
							Participan:<br>
			<textarea name="participan" rows=19 cols=70 width:300px height:40px></textarea><br>
							Imagen:<br>
			<input type="text" name="imagen" size="50">.jpg<br></br>

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