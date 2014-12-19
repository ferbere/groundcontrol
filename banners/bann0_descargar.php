<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro = $_GET['rubro'];
}
	$sql=$mysql->consulta("SELECT id,nombre,ext FROM descargar_index WHERE id = 2");
	echo '<div id="bann2-carta"><h2>Material de descarga</h2>';
	while($row=$mysql->fetch_array($sql)){
		echo '<a href="admin/gadgets/descargar/descargas/descargar.php?f='.$row['nombre'].'.'.$row['ext'].'">'.$row[1].'.'.$row[2].'</a><br>';
?>
	</div>
<?php	
}	?>
