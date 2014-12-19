<?php
session_start();
include("style/header_admin.html");
$link=Conectarse();
if(isset($_POST['rubro'])){
$rubro=$_POST['rubro'];	
}
if(isset($_POST['nombre'])){
$nombre=$_POST['nombre'];	
}
if(isset($_POST['vin'])){
$vin=$_POST['vin'];
}
$mysql=mysql_query("UPDATE submenu SET  nombre = '$nombre',vin = '$vin' WHERE id = '$rubro'" ,$link);
if(!$mysql){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="'.$_SERVER['HTTP_REFERER'].'?capturado=1";</script>';
}
include("style/footer_admin.html");
?>