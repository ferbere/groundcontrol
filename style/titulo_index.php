<?php
require_once("classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql=$mysql->consulta("SELECT titulo FROM corporativa_index WHERE id = ".$rubro);
while($row=$mysql->fetch_array($sql)){
	echo $row['titulo'];
}
?>
