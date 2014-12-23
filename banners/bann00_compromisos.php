<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,nombre,texto FROM perfil_iniciativa WHERE categoria = 2 ORDER BY id DESC LIMIT 10");
$sql_q = $mysql->num_rows($sql);
?>
<div id="bann00_propuestas">
		<?php
			$i=1;
			echo 	'<h1>Compromisos<br><small><small>('.$sql_q.')</small></small></h1>';
			echo '<div id="bann00_propuestas_tx">';
		while($row=$mysql->fetch_array($sql)){
			echo '<div>';
			echo 	'<li>';
			echo		'<a href="compromisos.php?rubro='.$row[0].'">';
			echo 			'<div id="propuestas_title">'.$i.'.-'.$row[1].'</div><br>';
			echo		'</a>';
			echo 	'</li>';
			echo '</div>';
			$i=$i+1;
		}
		?>
				</div>
</div>