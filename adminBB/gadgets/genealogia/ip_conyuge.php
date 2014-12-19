<?php
include_once("../../../classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(isset($_GET['fili'])){
	$fili=$_GET['fili'];
}
if(isset($_GET['parentesco'])){
	$parentesco=$_GET['parentesco'];
}
$que=$mysql->consulta("INSERT INTO genealogia_conyuge (parent,conyuge) values ('{$fili}','{$rubro}')");
if(!$que){
	die ("chispas:" .mysql_error());
}else{
	echo 	'<script>window.location.href="../../genealogia.php?ruta=if_registro_a.php&rubro='.$fili.'";</script>';
}


?>