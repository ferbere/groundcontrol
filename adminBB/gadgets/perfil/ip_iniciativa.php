<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
$nombre=$_POST['nombre'];
$texto=$_POST['texto'];
$categoria=$_POST['categoria'];
$visible=$_POST['visible'];

$mysql=mysql_query("INSERT INTO perfil_iniciativa (nombre,texto,categoria,visible) VALUES ('{$nombre}','{$texto}','{$categoria}','{$visible}')",$link);
if(!$mysql){die ("Pos no se captur� el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../perfil.php?ruta=if_iniciativa.php&capturado=1";</script>';
}
?>