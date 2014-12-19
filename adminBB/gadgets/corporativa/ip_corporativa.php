<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();

$titulo=$_POST["titulo"];
$subtitulo=$_POST["subtitulo"];
$contenido=$_POST["contenido"];
$banner=$_POST["banner"];
$publicado=$_POST["publicado"];
$autor=$_POST["autor"];
$imagen=$_POST["imagen"];
$ruta=$_POST["ruta"];
/*$sistemas2=$_POST["sistemas2"];*/
$que=mysql_query("INSERT into corporativa_index (titulo,subtitulo,contenido,banner,publicado,autor,imagen,ruta) values ('{$titulo}','{$subtitulo}','{$contenido}','{$banner}','{$publicado}','{$autor}','{$imagen}','{$ruta}') ",$link);
if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
}else{
echo 	'<script>window.location.href="../../corporativa.php?ruta=if_corporativa.php&capturado=1";</script>';
}
?>