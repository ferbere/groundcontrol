<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(isset($_GET['padre'])){
	$padre=$_GET['padre'];
}
if(isset($_GET['madre'])){
	$madre=$_GET['madre'];
}
//MADRE ES 0 Y PADRE 1
for($i=1;$i>=0;$i--){
	$parent=array(0=>'madre',1=>'padre');
	$fili_sql=$mysql->consulta("SELECT genealogia_index.id,genealogia_index.nombre FROM genealogia_index INNER JOIN genealogia_fili ON genealogia_index.id = genealogia_fili.parent_f  WHERE genealogia_fili.fili = '$rubro' AND parentesco = '$i' ");
	$fili_cuenta=$mysql->num_rows($fili_sql);
	if(($i==0)&&($fili_cuenta==0)){
		$madre='<b>Sin registro</b>';
	}elseif(($i==1)&&($fili_cuenta==0)){
		$padre='<b>Sin registro</b>';
	}else{
			while ($fili_row=$mysql->fetch_array($fili_sql)){
				if($i==0){
					$madre='<b><a href="genealogia.php?ruta=perfil.php&rubro='.$fili_row[0].'">'.$fili_row[1].'</a></b>';
				}elseif($i==1){
					$padre='<b><a href="genealogia.php?ruta=perfil.php&rubro='.$fili_row[0].'">'.$fili_row[1].'</a></b>';
				}
			}
	}
}

?>