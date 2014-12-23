<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,nombre FROM video_index WHERE visible = 1 ORDER BY id DESC");
?>
<div id="bann00_videos_2">
		<?php
			echo 	'<h1>Más videos</h1>';
			echo '<div id="bann00_propuestas_tx">';
		while($row=$mysql->fetch_array($sql)){
			echo '<div id="">';
			echo 	'<li>';
			echo		'<a href="videos.php?rubro='.$row[0].'">';
			echo 			'<div id="">'.$row[1].'</div><br>';
			echo		'</a>';
			echo 	'</li>';
			echo '</div>';
		}
		?>
				</div>
</div>