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
if(isset($_POST['fecha'])){
	$fecha=$_POST['fecha'];
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
$mysql=mysql_query("UPDATE eventos_index SET  nombre = '$nombre', fecha = '$fecha', participan= '$participan',  imagen = '$imagen', visible='$visible' WHERE id = '$rubro'" ,$link);
if(!$mysql){die ("Pos no se captur� el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../eventos.php?ruta=if_evento_a.php&capturado=1";</script>';
}
include("style/footer_admin.html");
?>