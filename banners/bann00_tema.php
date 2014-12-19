<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
include_once("classes/cambiaf_a_normal.class.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,titulo,subtitulo,contenido,fecha,imagen FROM noticias_index WHERE categoria = 1 AND publicado = 1 ORDER BY fecha DESC LIMIT 1");
?>
<div>
<?php
	while($row=$mysql->fetch_array($sql)){
	echo '<div id="noticias">';
	echo 	'<div id="noticias0">';
	echo 		'<h1>El tema</h1>';
	echo 		'<div id="noticias1"><img src="images/noticias/'.$row[5].'"></div>';
	echo 		'<div id="noticias2">';
	echo 			'<div id="noticias2_title">'.$row[1].'</div>';
//	echo 			'<div id="noticias2_title_sub">Fecha: '.cambiaf_a_normal($row[4]).'</div>';
	echo 		'</div>';
	echo 	'</div>';

	echo 	'<div id="noticias3">';
	echo 		'<div id="noticias_contenido">'.cut_string($row[3],200).'</div>';
	echo 		'<div class="seccion_noticias_leermas">';
	echo			'<a href="noticias.php?rubro='.$row[0].'">';
//	echo			'<a href="images/opinion/informe2012-2013.pdf" target="_blank">';	
	echo				'Leer más';
	echo			'</a>';
	echo 		'</div>';
	echo 	'</div>';
	echo '</div>';
	}
?>
</div>