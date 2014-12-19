<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST['rubro'])){
	$rubro=$_POST['rubro'];	
}
if(isset($_POST['nombre'])){
	$nombre=$_POST['nombre'];	
}
if(isset($_POST['evento'])){
	$evento=$_POST['evento'];
}
if(isset($_POST['participan'])){
	$participan=$_POST['participan'];
}
if(isset($_POST['imagen'])){
	$imagen=$_POST['imagen'];
}
if(isset($_POST['visible'])){
	$visible=$_POST['visible'];
}
$mysql=mysql_query("UPDATE eventos_fotos SET  nombre = '$nombre', evento = '$evento', participan= '$participan',  imagen = '$imagen', visible='$visible' WHERE id = '$rubro'" ,$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../eventos.php?ruta=if_evento_foto_a.php&capturado=1";</script>';
}
include("style/footer_admin.html");
?>