<?php
require_once("classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$rubro=4;
if(!empty($rubro)){
	$sql=$mysql->consulta("SELECT perfil_index.nombre,perfil_categoria.nombre FROM perfil_index INNER JOIN perfil_categoria ON perfil_index.categoria = perfil_categoria.id WHERE perfil_index.id =".$rubro);
	while($row=$mysql->fetch_array($sql)){
		echo 'Perfil :: '.$row[0].', '.$row[1];
	}
}else{
	echo "Perfil del candidato";
}
?>
