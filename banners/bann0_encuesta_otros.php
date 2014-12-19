<?php
include_once("classes/recorte.php");
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="encuesta_ant">
	<div id="encuesta_ant_sec">Encuestas anteriores</div>
<?php
$sql = $mysql->consulta("SELECT quiz_index.id,quiz_index.nombre,quiz_index.imagen,quiz_index.contenido FROM quiz_index  WHERE quiz_index.id > 1 ORDER BY quiz_index.id DESC LIMIT 10");

while($row = $mysql->fetch_array($sql)){
		echo '<div id="content">';
		echo '<div id="encuesta_ant_img">';
		echo 	'<a href="encuesta.php?rubro='.$row[0].'">';
		echo 		'<img src="images/encuesta/'.$row[2].'">';
		echo 	'</a>';
		echo '</div>';
		echo '<div id="encuesta_ant_cont">';
		echo 	'<div id="encuesta_ant_tit">'.$row[1].'</div>';
		echo 	'<div id="encuesta_ant_cont">'.$row[3].'</div>';
		echo '</div>';
		echo '</div>';
} ?>
</div>