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
		$ruta='bus_ligas.php';
	}
?>
<div align="center">
	<form action="ligas.php" method="get">
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
			$sql = "SELECT ligas_index.id,ligas_index.nombre,ligas_index.ruta,general_visible.nombre,ligas_index.contenido FROM ligas_index INNER JOIN general_visible ON ligas_index.visible = general_visible.id";
			$celdas=array(0=>'id',1=>'nombre',2=>'ruta',3=>'visible');
			$pez=" where ligas_index.nombre like '%" . $criterio . "%' or ligas_index.ruta like '%" . $criterio . "%' or ligas_index.contenido like '%" . $criterio . "%'";
			$set='if_ligas_a.php';
			$borra=1;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>