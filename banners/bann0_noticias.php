<?php
session_start();
include_once("classes/mysql.php");
include_once("classes/cambiaf_a_normal.class.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div style="text-align:justify">
<?php
$sql = $mysql->consulta("SELECT noticias_index.id,noticias_index.titulo,noticias_index.subtitulo,noticias_index.imagen,noticias_index.contenido,noticias_index.fecha FROM noticias_index  WHERE noticias_index.categoria = 1 AND id = '$rubro' ");
	while($row = $mysql->fetch_array($sql)){
		$id				= $row[0];
		$titulo			= $row[1];
		$subtitulo		= $row[2];
		$imagen			= $row[3];
		$contenido		= $row[4];
		$fecha			= $row[5];
	}
	?>
			<h1><?php echo $titulo;?></h1>
<!--			<div id="autor">Fecha: <?php echo cambiaf_a_normal($fecha) ?></div>-->
			<div id="contenido"><img src="images/noticias/<?php echo $imagen; ?>"><?php echo $contenido;?></div>
</div>