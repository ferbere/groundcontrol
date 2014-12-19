<?php
include_once("classes/mysql.php");
include("classes/cuenta.class.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql = $mysql->consulta("SELECT imagen FROM banners_index WHERE visible = 1 AND banner = 0 ORDER BY id DESC");
while($row = $mysql->fetch_array($sql)){
	$imagen		= $row[0];
}
	?>
	<div id="bann00_imagen">
		<img src="images/banners/<?php echo $imagen; ?>">
	</div>