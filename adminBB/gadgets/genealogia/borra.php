<?php
session_start();
header("Location: ".$_SERVER['HTTP_REFERER']);
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(isset($_GET['rubro2'])){
	$rubro2=$_GET['rubro2'];
}
if(isset($_GET['borra'])){
	$borra=$_GET['borra'];
}
if($borra==1){
	mysql_query("DELETE FROM genealogia_index WHERE id = '$rubro' ", $link);
}elseif($borra==2){
	mysql_query("DELETE FROM genealogia_fili WHERE fili = '$rubro2' AND parent_f = $rubro ", $link);
}elseif($borra==3){
	mysql_query("DELETE FROM genealogia_conyuge WHERE parent = '$rubro' AND conyuge = $rubro2 ", $link);
}elseif($borra==4){
	mysql_query("DELETE FROM genealogia_fili WHERE fili = '$rubro' AND parent_f = $rubro2 ", $link);
}

?>