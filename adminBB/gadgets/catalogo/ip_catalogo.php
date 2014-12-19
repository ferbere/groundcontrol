<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
$nombre=$_POST["nombre"];
$subnombre=$_POST["subnombre"];
$categoria=$_POST["categoria"];
$descripcion=$_POST["descripcion"];
$imagen=$_POST["imagen"];
$ext=$_POST["ext"];
$visible=$_POST["visible"];
$precio_baja=$_POST["precio_baja"];
$precio_alta=$_POST["precio_alta"];
$precio_altisima=$_POST["precio_altisima"];
$precio_alta2=$_POST["precio_alta2"];
$que=mysql_query("INSERT into catalogo_index (nombre,subnombre,categoria,descripcion,imagen,ext,visible,precio_baja,precio_alta,precio_altisima,precio_alta2) values ('{$nombre}','{$subnombre}','{$categoria}','{$descripcion}','{$imagen}','{$ext}','{$visible}','{$precio_baja}','{$precio_alta}','{$precio_altisima}','{$precio_alta2}') ",$link);
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="../../catalogo.php?ruta=if_catalogo.php&capturado=1";</script>';
}
include("style/footer_admin.html");
?>