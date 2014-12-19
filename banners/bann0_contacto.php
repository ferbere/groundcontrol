<div id="contacto_form">
<br><br>
	<h1>Contacto</h1>
<?php
if(isset($_GET['mensaje'])){
	$mensaje=$_GET['mensaje'];
}
if($mensaje=='enviado'){
	include_once("classes/conex.php");
	$link=Conectarse();
	$sql=mysql_query("SELECT contenido FROM corporativa_index WHERE id = 3 ",$link);
	while ($row=mysql_fetch_array($sql)){
		echo $row['contenido'];
	}
//	echo 'Su mensaje se ha enviado. <br>En breve nos pondremos en contacto con usted.<br><br> Muchas gracias';
}else{
	include("admin/gadgets/mensajes/exe_if_mensaje.php");
}
?>
<br><br>
</div>
