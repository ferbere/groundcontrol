<?php
//include_once("classes/linea.class.php");
include_once("classes/linea2.class.php");
include_once("classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}

$sql=$mysql->consulta("SELECT generacion FROM genealogia_index WHERE id = '$rubro' ");
$row=$mysql->fetch_array($sql);
for($i=1;$i<$row[0];$i++){
	if($i==1){
		$padre 			= linea($i,$rubro);
		$salida_padre	= $padre[1];
	}else{
		$padre 			= linea($i,$salida_padre);
		$salida_padre	= $padre[1];
	}
	$result[$i] = $padre[1];
}
for($e=count($result);$e>=1;$e--){
	echo linea_nombre($result[$e]).'<br>';
}
?>