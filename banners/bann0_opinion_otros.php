<?php
include_once("classes/recorte.php");
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="opinion_ant">
	<div id="opinion_ant_sec">Entradas anteriores</div>
<?php
$sql = $mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.imagen,articulos_index.contenido,perfil_index.nombre FROM articulos_index INNER JOIN perfil_index ON articulos_index.autor = perfil_index.id WHERE articulos_index.publicado = 1 AND articulos_index.id != '$rubro' ORDER BY articulos_index.id DESC LIMIT 10");

while($row = $mysql->fetch_array($sql)){
		echo '<div id="opinion_ant_img">';
		echo '<a href="opinion.php?rubro='.$row[0].'">';
		echo 	'<img src="images/articulos/'.$row[2].'">';
		echo '</a>';
		echo '</div>';
		echo '<div id="opinion_ant_cont">';
		echo 	'<div id="opinion_ant_tit">'.$row[1].'</div>';
		echo 	'<div id="opinion_ant_aut">Escrito por:'.$row[4].'</div>';
		echo 	cut_string($row[3],300);
		echo '</div>';
} ?>
</div>