<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.subtitulo,articulos_categoria.nombre FROM articulos_index INNER JOIN articulos_categoria ON articulos_index.categoria = articulos_categoria.id WHERE articulos_index.id !=0 AND articulos_index.publicado = 1 AND  articulos_index.categoria = 2 ORDER BY articulos_index.titulo DESC LIMIT 5");
?>
<div class="seccion_boletines" id="boletines_2">
		<?php
			echo 	'<h1>Boletines de prensa</h1>';
			echo '<div id="boletines_ext">';
		while($row=$mysql->fetch_array($sql)){
			echo '<div id="boletines">';
			echo 	'<li>';
			echo		'<a href="boletines.php?rubro='.$row[0].'">';
			echo 			'<div id="boletines_title">'.$row[1].'</div><br>';
			echo		'</a>';
			echo 	'</li>';
			echo '</div>';
		}
		?>
				</div>
</div>