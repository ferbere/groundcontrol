<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="opinion">
	<div id="opinion_tit">Opinión</div>
<?php
$sql = $mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.imagen,articulos_index.contenido,perfil_index.nombre FROM articulos_index INNER JOIN perfil_index ON articulos_index.autor = perfil_index.id WHERE articulos_index.id = '$rubro'");

while($row = $mysql->fetch_array($sql)){
?>
		<h1><?php echo $row[1];?></h1>
		<div id="autor">Escrito por: <?php echo $row[4] ?></div>
		<div id="contenido"><img src="images/articulos/<?php echo $row[2]; ?>"><?php echo $row[3];?></div>
<?php
}
?>
</div>