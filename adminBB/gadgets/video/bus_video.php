<?php
if (isset($_GET['pag'])){
	$pag=$_GET['pag'];
}else{
	$pag=0;
}
if(isset($_GET['criterio'])){
	$criterio = $_GET['criterio'];
}
if(isset($_GET['ruta'])){
	$ruta = $_GET['ruta'];
}
	if(empty($ruta)){
		$ruta='bus_prensa.php';
	}
?>
<div align="center">
	<form action="video.php" method="get">
	Criterio de búsqueda:
		<input type="hidden" name="ruta" value="<?php echo $ruta ?>">
		<input type="text" name="criterio" size="22" maxlength="150">
		<input type="submit" value="Buscar">
	</form>
</div>
	<div style="margin: 0px auto">
<?php
			include_once("classes/sacar.class.php");
			$self=sacar($_SERVER['PHP_SELF'],"admin/",".php");	
			include_once("classes/buscador.class.php");
			$sql = "SELECT video_index.id,video_index.nombre,video_index.fecha,general_visible.nombre FROM video_index INNER JOIN general_visible ON video_index.visible = general_visible.id";
			$celdas=array(0=>'id',1=>'nombre',2=>'fecha',3=>'visible');
			$pez=" where video_index.nombre like '%" . $criterio . "%' or video_index.fecha like '%".$criterio."%' or general_visible.nombre like '%".$criterio."%'";
			$set='if_video_a.php';
			$borra=1;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>