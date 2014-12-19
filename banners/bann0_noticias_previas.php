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
		<h1>Temas del día</h1>
		<div style="font-size:0.9em;margin-top:-20px;padding-bottom:20px;text-align:center">(histórico)</div>
<?php
$sql = $mysql->consulta("SELECT noticias_index.id,noticias_index.titulo,noticias_index.subtitulo,noticias_index.fecha,noticias_index.imagen FROM noticias_index WHERE noticias_index.categoria = 1 ORDER BY noticias_index.fecha DESC");

while($row = $mysql->fetch_array($sql)){
?>
	<div id="contenido_boletines">
		<div id="content3">
			<li>
				<div id="content3-1">
					<a href="noticias.php?rubro=<?php echo $row[0];?>">
						<img src="images/noticias/<?php echo $row[4]; ?>">
					</a>
				</div>
				<div id="content3-2">
					<div id="content3-2-1">
						<?php echo '<b>'.cambiaf_a_normal($row[3]).'</b>'?>
					</div>
					<div id="content3-2-2">
						<?php echo '<big>'.$row[1].'</big>'?>
					</div>
				</div>
			</li>
		</div>
	</div>
<?php
} ?>
</div>