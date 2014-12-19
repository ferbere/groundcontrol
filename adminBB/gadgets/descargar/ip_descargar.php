<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();

$nombre=$_POST['nombre'];
$visible=$_POST['visible'];
$disponible=$_POST['disponible'];
$ext=$_POST['ext'];
$mysql=mysql_query("INSERT INTO descargar_index (nombre,visible,disponible,ext) values ('{$nombre}','{$visible}','{$disponible}','{$ext}')",$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../descargar.php?ruta=if_descargar.php&capturado=1";</script>';
}
?>