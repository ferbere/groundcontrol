<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,nombre,texto FROM perfil_iniciativa WHERE categoria = 1 ORDER BY id DESC LIMIT 10");
?>
<div id="bann00_propuestas">
		<?php
			echo 	'<h1>Propuestas</h1>';
			echo '<div id="bann00_propuestas_tx">';
		while($row=$mysql->fetch_array($sql)){
			echo '<div>';
			echo 	'<li>';
			echo		'<a href="propuestas.php?rubro='.$row[0].'">';
			echo 			'<div id="propuestas_title">'.$row[1].'</div><br>';
			echo		'</a>';
			echo 	'</li>';
			echo '</div>';
		}
		?>
				</div>
</div>