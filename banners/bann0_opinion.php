<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="opinion">
<?php
$sql = $mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.imagen,articulos_index.contenido,perfil_index.nombre,articulos_categoria.nombre FROM articulos_index INNER JOIN perfil_index ON articulos_index.autor = perfil_index.id INNER JOIN articulos_categoria ON articulos_index.categoria = articulos_categoria.id WHERE articulos_index.id = '$rubro'");

while($row = $mysql->fetch_array($sql)){
?>
		<div id="opinion_tit"><?php echo $row[5];?></div>
		<h1><?php echo $row[1];?></h1>
		<div id="autor">Escrito por: <?php echo $row[4] ?></div>
		<div id="contenido"><img src="images/articulos/<?php echo $row[2]; ?>"><?php echo $row[3];?></div>
		<div class="fb-like" data-href="http://www.bunkerpolitico.com.mx/bunker/opinion.php?rubro='.$row[0].'" data-layout="box_count" data-action="like" data-show-faces="true" data-share="true"></div>
<?php
}
?>
</div>