<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST["rubro"])){
	$rubro=$_POST["rubro"];
}
if(isset($_POST["nombre"])){
	$nombre=$_POST["nombre"];
}
if(isset($_POST["descripcion"])){
	$descripcion=$_POST["descripcion"];
}
if(isset($_POST["imagen"])){
	$imagen=$_POST["imagen"];
}
if(isset($_POST["distrito"])){
	$distrito=$_POST["distrito"];
}
if(isset($_POST["categoria"])){
	$categoria=$_POST["categoria"];
}
if(isset($_POST["visible"])){
	$visible=$_POST["visible"];
}
if(isset($_POST["ext"])){
	$ext=$_POST["ext"];
}
if(isset($_POST["email"])){
	$email=$_POST["email"];
}
if(isset($_POST["sala"])){
	$sala=$_POST["sala"];
}
if(isset($_POST["telefonos"])){
	$telefonos=$_POST["telefonos"];
}
if(isset($_POST["enlace"])){
	$enlace=$_POST["enlace"];
}
if(isset($_POST["orden"])){
	$orden=$_POST["orden"];
}
$que=mysql_query("UPDATE perfil_index SET nombre = '$nombre', descripcion = '$descripcion', imagen = '$imagen', distrito = '$distrito', categoria = '$categoria', visible='$visible', ext='$ext', email='$email', sala='$sala', telefonos='$telefonos', enlace='$enlace', orden='$orden' WHERE id = '$rubro'",$link);
if(!$que){die ("Pos no se captur� el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../perfil.php?ruta=if_perfil_a.php&capturado=1";</script>';
}
?>