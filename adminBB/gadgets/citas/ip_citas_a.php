<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST["rubro"])){
	$rubro=$_POST["rubro"];
}
if(isset($_POST["autor"])){
	$autor=$_POST["autor"];
}
if(isset($_POST["contenido"])){
	$contenido=$_POST["contenido"];
}
if(isset($_POST['visible'])){
	$visible=$_POST['visible'];
}
if(isset($_POST['diputado'])){
	$diputado=$_POST['diputado'];
}
$que=mysql_query("UPDATE citas_index SET autor = '$autor',contenido = '$contenido',visible = $visible,diputado = $diputado WHERE id = '$rubro'",$link);
if(!$que){die ("Pos no se captur� el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../citas.php?ruta=if_citas_a.php&capturado=1";</script>';
}
?>