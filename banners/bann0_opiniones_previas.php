<?php
include_once("classes/mysql.php");
include_once("classes/cambiaf_a_normal.class.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div style="text-align:justify">
		<h1>Opinión</h1>
		<div style="font-size:0.9em;margin-top:-20px;padding-bottom:20px;text-align:center">(histórico)</div>
<?php
$sql = $mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.subtitulo,articulos_index.fecha,perfil_index.nombre,articulos_index.imagen FROM articulos_index INNER JOIN perfil_index ON articulos_index.autor = perfil_index.id WHERE articulos_index.categoria = 1 ORDER BY articulos_index.fecha DESC");

while($row = $mysql->fetch_array($sql)){
?>
	<div id="contenido_boletines">
		<div id="content3">
			<li>
				<div id="content3-1">
					<a href="opinion.php?rubro=<?php echo $row[0];?>">
						<img src="images/opinion/<?php echo $row[5]; ?>">
					</a>
				</div>
				<div id="content3-2">
					<div id="content3-2-1">
						<?php echo '<b>'.cambiaf_a_normal($row[3]).'</b>'?>
					</div>
					<div id="content3-2-2">
						<?php echo '<big>'.$row[1].'</big>'?>
						<?php echo 'Escrito por : '.$row[4].''?>
					</div>
				</div>
			</li>
		</div>
	</div>
<?php
} ?>
</div>