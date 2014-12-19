<?php
include_once("classes/mysql.php");
include_once("classes/recorte.php");
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,liga,nombre,descripcion FROM video_index WHERE id = '$rubro'");
	while($row=$mysql->fetch_array($sql)){
		$id 			= $row[0];
		$liga 			= $row[1];
		$nombre		 	= $row[2];
		$descripcion 	= $row[3];
	}

?>
<div id="iniciativasS">
		<div id="videos">
					<h1><?php echo $nombre; ?></h1>
					<iframe width="320" height="240" src="
					  	<?php echo $liga?>"
					frameborder="0" allowfullscreen></iframe>
	<?php 	
						echo $row['descripcion'];
	?>
		</div>
</div>