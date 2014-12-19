<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){
	$link=Conectarse();
	include("../library/tinymce.php");
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
	if(empty($capturado)){
		$sql=mysql_query("SELECT * FROM eventos_index WHERE id = '$rubro' ",$link);
		while($row=mysql_fetch_array($sql)){
	?>
		<script type="text/javascript" src="../library/tinymce/tiny_mce.js"></script>
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
			<form method="post" action="gadgets/eventos/ip_evento_a.php">
			<div id="maincontent-tit">
				Modificar evento<br><br>
			</div>
				<div id="maincontent-body">
					<div style="border:0px solid; height:100%">
						<div style="width:250px; position: relative; float:left; text-align:center">
						<img src="../images/eventos/<?php echo $row['imagen'] ?>.jpg" style="max-width: 200px; max-heigth: 200px">
						</div>
							<div style="position: relative; float: left; left:50px">
								Nombre:<br>
				<input type="text" name="nombre" size="30" value="<?php echo $row['nombre']; ?>"><br>
								Fecha:<br>
				<input type="text" name="fecha" size="30" value="<?php echo $row['fecha']; ?>"><br>
								Imagen:<br>
				<input type="text" name="imagen" size="20" value="<?php echo $row['imagen']; ?>">.jpg<br><br>
				<?php
				if($row['visible']==1){
					$visi_no='nain';
					$visi_si='checked';
				}elseif($row['visible']==0){
					$visi_no='checked';
					$visi_si='nain';

				}
				?>
								Visible:<br>
					<input type="radio" name="visible" value="0" <?php echo $visi_no ?>>No
					<input type="radio" name="visible" value="1" <?php echo $visi_si ?>>Sí<br>			
					<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
				</div>
							<div style="clear:both; text-align:center">
								<br><br>Participan:<br>
				<textarea name="participan" rows=19 cols=70 width:300px height:40px><?php echo $row['participan'] ?></textarea><br><br>
				<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
				</form>
							</div>
						</div>
								<div>
								</div>
			</div>
<?php
		}//Termina while(principal)
	}else{
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}
}else{
	echo "Usted no tiene acceso a esta seccción";
}
?>