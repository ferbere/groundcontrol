<?php
session_start();
include("style/header_admin.html");
$link=Conectarse();

$nombre=$_POST['nombre'];
$vin=$_POST['vin'];
$mysql=mysql_query("INSERT into submenu (nombre,vin) values ('{$nombre}','{$vin}')",$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="'.$_SERVER['HTTP_REFERER'].'?capturado=1";</script>';
}
include("style/footer_admin.html");
?>