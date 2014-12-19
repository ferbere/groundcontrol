<?php
session_start();
include_once("classes/mysql.php");
include_once("classes/cambiaf_a_normal.class.php");
$mysql=new MySQL();
?>
<div style="text-align:justify">
	<h1>Diputados en Acción</h1>
<?php
$sql = $mysql->consulta("SELECT noticias_index.id,noticias_index.titulo,noticias_index.subtitulo,noticias_index.imagen,noticias_index.contenido,noticias_index.fecha FROM noticias_index  WHERE noticias_index.categoria = 2 AND noticias_index.publicado = 1 ORDER BY noticias_index.fecha DESC ");

	while($row = $mysql->fetch_array($sql)){?>
<!--			<div id="autor">
				Fecha: <?php echo cambiaf_a_normal($row['fecha']) ?>
			</div>-->
			<div id="diputados_en_accion_contenido">
				<?php echo $row['contenido'];?>
			</div>
<?php	}
	?>
</div>