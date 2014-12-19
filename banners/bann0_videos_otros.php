<?php
include_once("classes/recorte.php");
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="encuesta_ant">
	<div id="encuesta_ant_sec">Videos anteriores</div>
<?php
$sql = $mysql->consulta("SELECT id,liga,nombre,descripcion FROM video_index WHERE id != '$rubro' ORDER BY id DESC LIMIT 10");

while($row = $mysql->fetch_array($sql)){
		echo '<div id="content">';
		echo '<div id="encuesta_ant_img">';
		echo	'<iframe width="320" height="240" src="'.$row[1].'" frameborder="0" allowfullscreen></iframe>';
		echo '</div>';
		echo '<div id="encuesta_ant_cont">';
		echo 	'<div id="encuesta_ant_tit">'.$row[2].'</div>';
		echo 	'<div id="encuesta_ant_cont">'.$row[3].'</div>';
		echo '</div>';
		echo '</div>';
} ?>
</div>

