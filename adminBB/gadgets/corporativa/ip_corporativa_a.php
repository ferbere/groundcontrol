<?php
session_start();
include("style/header_admin.html");
//require_once("conex.php");
$link=Conectarse();
if(isset($_GET["ruta"])){
$ruta=$_GET["ruta"];
}
if(isset($_GET["rubro"])){
$rubro=$_GET["rubro"];
}
if(isset($_GET["titulo"])){
$titulo=$_GET["titulo"];
}
if(isset($_GET["subtitulo"])){
$subtitulo=$_GET["subtitulo"];
}
if(isset($_GET["imagen"])){
$imagen=$_GET["imagen"];
}
if(isset($_GET["banner"])){
$banner=$_GET["banner"];
}
if(isset($_GET["publicado"])){
$publicado=$_GET["publicado"];
}
if(isset($_GET["contenido"])){
$contenido=$_GET["contenido"];
}
if(isset($_GET["orden"])){
$orden=$_GET["orden"];
}
if(isset($_GET["rutas"])){
$rutas=$_GET["rutas"];
}
$que=mysql_query("UPDATE corporativa_index SET titulo = '$titulo', subtitulo = '$subtitulo', imagen = '$imagen', banner = '$banner', publicado = '$publicado', contenido = '$contenido', ruta = '$rutas', orden = '$orden'  WHERE id = '$rubro'",$link);
if(!$que){die ("Pos no se captur� el contenido, parece que: " .mysql_error());
}else{
echo '<script>window.location.href="corporativa.php?ruta=if_corporativa_a.php&rubro='.$rubro.'&capturado=1";</script>';
}
include("style/footer_admin.html");
?>