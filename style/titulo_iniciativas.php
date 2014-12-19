<?php
require_once("classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($rubro)){
	echo 'Iniciativas del Grupo Parlamentario del PAN';
}else{
	$sql=$mysql->consulta("SELECT nombre FROM perfil_iniciativa WHERE id = '$rubro'");
	while($row=$mysql->fetch_array($sql)){
		echo $row[0];
	}
}
?>
