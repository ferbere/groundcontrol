<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
$nombre=$_POST['nombre'];
$evento=$_POST['evento'];
$imagen=$_POST['imagen'];
$participan=$_POST['participan'];
$visible=$_POST['visible'];
$mysql=mysql_query("INSERT into eventos_fotos (nombre,evento,imagen,participan,visible) values ('{$nombre}','{$evento}', '{$imagen}','{$participan}','{$visible}')",$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../eventos.php?ruta=if_evento_foto.php&capturado=1";</script>';
}
include("style/footer_admin.html");
?>