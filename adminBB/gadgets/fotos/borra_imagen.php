<?php
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql=mysql_query("UPDATE fotos_index SET imagen = '' WHERE id = '$rubro' ", $link);
if(!$sql){
	die ("Pos no se borr� el contenido, parece que: " .mysql_error());
}
echo 	'<script>window.location.href="../../fotos.php?ruta=if_fotos_a.php&rubro='.$rubro.'";</script>';
?>