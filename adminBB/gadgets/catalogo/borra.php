<?php
session_start();
header("Location: ".$_SERVER['HTTP_REFERER']);
include_once('../../../classes/conex.php');
//$link=Conectarse();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(isset($_GET['borra'])){
	$borra=$_GET['borra'];
}
if($borra==1){
	mysql_query("DELETE FROM catalogo_index WHERE id = '$rubro' ", $link);
}elseif($borra==2){
	mysql_query("DELETE FROM catalogo_categoria WHERE id = '$rubro' ", $link);
}elseif($borra==3){
	mysql_query("DELETE FROM catalogo_temporadas WHERE id = '$rubro' ", $link);
}
?>