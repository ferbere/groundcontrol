<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="opinion">
	<div id="opinion_tit">Propuestas</div>
<?php
$sql = $mysql->consulta("SELECT id,nombre,texto FROM perfil_iniciativa WHERE categoria = 1 AND id = '$rubro'");
while($row = $mysql->fetch_array($sql)){
	$id 	= $row[0];
	$nombre = $row[1];
	$texto	= $row[2];
}
?>
		<h1><?php echo $nombre;?></h1>
		<div id="contenido">
			<!--<img src="images/articulos/<?php echo $row[2]; ?>">-->
			<?php $texto;?>
	</div><br>
	<div class="fb-like" data-href="http://www.bunkerpolitico.com.mx/bunker/opinion.php?rubro='.$row[0].'" data-layout="box_count" data-action="like" data-show-faces="true" data-share="true"></div>
</div>