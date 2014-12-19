<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.contenido,articulos_categoria.nombre,perfil_index.nombre,articulos_index.imagen FROM articulos_index INNER JOIN articulos_categoria ON articulos_index.categoria = articulos_categoria.id INNER JOIN perfil_index ON articulos_index.autor = perfil_index.id WHERE articulos_index.id !=0 AND articulos_index.categoria = 1 ORDER BY articulos_index.id DESC LIMIT 1");
?>
<div id="bann00_opinion">
		<?php
		while($row=$mysql->fetch_array($sql)){

			echo 	'<h1>'.$row[3].'</h1>';
			echo 	'<div id="bann00_opinion1"><img src="images/articulos/'.$row[5].'"></div>';
			echo 	'<div id="bann00_opinion2">';
			echo 		'<div id="title">'.$row[1].'</div><br>';
			echo 		'<div id="bann00_opinion3">';
			echo 			'<div id="title_sub" class="title_sub">Por: '.$row[4].'</div>';
			echo 			'<div id="contenido">'.cut_string($row[2],300).'</div>';
			echo 			'<div id="bann00_opinion_leermas">';
			echo				'<a href="opinion.php?rubro='.$row[0].'">';
			echo					'Leer más';
			echo				'</a>';
			echo 			'</div>';
			echo 		'</div>';
			echo 	'</div>';
		}
		?>
</div>