<?php
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST['rubro'])){
$rubro=$_POST['rubro'];	
}
if(isset($_POST['nombre'])){
$nombre=$_POST['nombre'];	
}
if(isset($_POST['imagen'])){
$imagen=$_POST['imagen'];
}
if(isset($_POST['ruta'])){
$ruta=$_POST['ruta'];	
}
if(isset($_POST['ext'])){
$ext=$_POST['ext'];	
}
if(isset($_POST['submenu'])){
$submenu=$_POST['submenu'];	
}
if(isset($_POST['posicion'])){
$posicion=$_POST['posicion'];	
}

$mysql=mysql_query("UPDATE gadgets_botones SET  nombre = '$nombre',imagen = '$imagen',ruta = '$ruta',ext = '$ext', submenu = '$submenu',posicion = '$posicion' WHERE id = '$rubro'" ,$link);
if(!$mysql){die ("Pos no se captur� el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../gadgets.php?ruta=if_botones_a.php&capturado=1&rubro='.$rubro.'";</script>';
}
?>