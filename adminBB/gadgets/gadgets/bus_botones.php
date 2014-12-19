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
		$ruta='bus_botones.php';
	}
?>
<div align="center">
	<form action="gadgets.php" method="get">
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
			$sql = "SELECT gadgets_botones.id,gadgets_botones.nombre,gadgets_botones.ruta,gadgets_posicion.nombre FROM gadgets_botones INNER JOIN gadgets_posicion ON gadgets_botones.posicion = gadgets_posicion.id ";
//			$sql = "SELECT id,nombre,ruta,posicion FROM gadgets_botones";
			$celdas=array(0=>'id',1=>'nombre',2=>'ruta',3=>'posicion');
			$pez=" where gadgets_botones.nombre like '%" . $criterio . "%' or gadgets_botones.ruta like '%" . $criterio . "%'";
			$set='if_botones_a.php';
			$ruta='bus_gadgets.php';
			$borra=2;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>