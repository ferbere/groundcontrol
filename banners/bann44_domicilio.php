<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
?>
<div id="bann44_domicilio">
<?php
$sql = $mysql->consulta("SELECT id,titulo,subtitulo,contenido FROM corporativa_index WHERE id = 1");

while($row = $mysql->fetch_array($sql)){
	$id 			= $row[0];
	$titulo 		= $row[1];
	$subtitulo 		= $row[2];
	$contenido 		= $row[3];
}
	echo '<h1>'.$subtitulo.'</h1>';
	echo $contenido;
?>
</div>