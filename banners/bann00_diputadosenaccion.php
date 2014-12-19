<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
include_once("classes/cambiaf_a_normal.class.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,titulo,subtitulo,contenido,fecha,imagen FROM noticias_index WHERE categoria = 2 AND publicado = 1 ORDER BY fecha DESC LIMIT 1");
?>
<div>
<?php
	while($row=$mysql->fetch_array($sql)){
	echo '<div id="diputadosenaccion">';
	echo 	'<div id="diputadosenaccion0">';
	echo 		'<h1>Diputados en Acción</h1>';
	if(!empty($row[5])){
	echo 		'<div id="diputadosenaccion1">';
	echo  			'<img src="images/noticias/'.$row[5].'"></div>';
	echo 		'<div id="diputadosenaccion2">';
//	echo 			'<div id="diputadosenaccion2_title">'.$row[1].'</div>';
	echo 		'</div>';
	}else{
	echo 		'<div id="diputadosenaccion1_2">';
	echo 		'<div id="diputadosenaccion2_2">';
//	echo 			'<div id="diputadosenaccion2_title2">'.$row[1].'</div>';
	echo 		'</div>';
	}
	echo 	'</div>';
	$cadena = $row[3];
	$ejemplo = strlen($cadena);
	if($ejemplo>400){
		$contenido_resuelto=cut_string($row[3],500);
		$leermas='Leer más';
	}else{
		$contenido_resuelto=$row[3];
		$leermas='Ver más acciones';
	}
	echo 	'<div id="diputadosenaccion3">';
	echo 		'<div id="diputadosenaccion_contenido">'.$contenido_resuelto.'</div>';
	echo 		'<div class="seccion_diputadosenaccion_leermas">';
	echo			'<a href="diputadosenaccion.php">';
	echo				$leermas;
	echo			'</a>';
	echo 		'</div>';
	echo 	'</div>';
	echo '</div>';
	}
?>
</div>