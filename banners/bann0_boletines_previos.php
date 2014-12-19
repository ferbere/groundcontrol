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
		<h1>Boletines de prensa</h1>
		<div style="font-size:0.9em;margin-top:-20px;padding-bottom:20px;text-align:center">(histórico)</div>
<?php
$sql = $mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.subtitulo,articulos_index.fecha FROM articulos_index WHERE articulos_index.categoria = 2 ORDER BY articulos_index.fecha DESC");

while($row = $mysql->fetch_array($sql)){
?>
	<div id="contenido_boletines">
		<div id="content3">
			<li>
				<a href="boletines.php?rubro=<?php echo $row[0];?>">
					<?php echo '<b>'.cambiaf_a_normal($row[3]).'</b>'?>.......
					<?php echo '<big>'.$row[1].'</big>'?>
				</a>
			</li>
		</div>
	</div>
<?php
} ?>
</div>