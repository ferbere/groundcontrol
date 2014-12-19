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
if(isset($_POST['visible'])){
$visible=$_POST['visible'];
}
if(isset($_POST['disponible'])){
$disponible=$_POST['disponible'];
}
if(isset($_POST['ext'])){
$ext=$_POST['ext'];
}
$mysql=mysql_query("UPDATE descargar_index SET nombre='$nombre',visible='$visible', disponible='$disponible', ext='$ext'  WHERE id = '$rubro' ",$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../descargar.php?ruta=if_descargar_a.php&capturado=1";</script>';
}
?>