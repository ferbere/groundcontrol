<?php
require_once("classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(!empty($rubro)){
	$sql=$mysql->consulta("SELECT titulo FROM articulos_index WHERE id = ".$rubro);
	while($row=$mysql->fetch_array($sql)){
		echo 'Opini�n :: '.$row['titulo'];
	}
}else{
	echo "Opiniones (hist�rico)";
}
?>
