<?php
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($rubro)){
	$rubro = 11;
}
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql=$mysql->consulta("SELECT titulo FROM corporativa_index WHERE id = ".$rubro);
	while($row=$mysql->fetch_array($sql)){
		echo 'Transparencia :: '.$row['titulo'];
	}
?>
