<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
$nombre=$_POST['nombre'];
$desde=$_POST['desde'];
$hasta=$_POST['hasta'];
$mysql=mysql_query("INSERT into catalogo_temporadas (nombre,desde,hasta) values ('{$nombre}','{$desde}','{$hasta}')",$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../catalogo.php?ruta=if_temporadas.php&capturado=1";</script>';
}
?>