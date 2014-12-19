<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div style="text-align:justify">
<?php
$sql = $mysql->consulta("SELECT id,titulo,subtitulo,contenido FROM corporativa_index WHERE id = '$rubro'");

while($row = $mysql->fetch_array($sql)){
	$id 			= $row[0];
	$titulo 		= $row[1];
	$subtitulo 		= $row[2];
	$contenido 		= $row[3];
?>
		<h1><?php echo $titulo;?></h1>
		<div style="font-size:0.9em;margin-top:-20px;padding-bottom:20px;text-align:center">
			<?php echo $subtitulo;?>
		</div>

		<div id="bann0_contenido"><?php echo $contenido;?></div>
<?php
}
?>
</div>