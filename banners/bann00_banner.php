<?php
include_once("classes/mysql.php");
include("classes/cuenta.class.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql = $mysql->consulta("SELECT nombre,fecha,id,imagen,participan FROM eventos_index WHERE visible = 1 ORDER BY id DESC");
while($row = $mysql->fetch_array($sql)){
	$saca=strtotime($row[1]);
	$fecha		= date('M d Y H:i:s',$saca);
	$nombre		= $row[0];
	$imagen		= $row[3];
	$participan	= $row[4];
}
	?>
	<div id="bann_bann">
		<div id="bann_bann-img">
			<img src="images/eventos/<?php echo $imagen; ?>.jpg">
		</div>
		<div id="bann_bann-content">
			<script language="JavaScript">
				dame("<?php echo $fecha ?>","<?php echo $nombre ?>");
				getTime();
			</script>
		</div>
	</div>