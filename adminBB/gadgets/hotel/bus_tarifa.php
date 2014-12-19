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
		$ruta='bus_tarifa.php';
	}
?>
<div align="center">
	<form action="hotel.php" method="get">
	Criterio de búsqueda:
		<input type="hidden" name="ruta" value="<?php echo $ruta ?>">
		<input type="text" name="criterio" size="22" maxlength="150">
		<input type="submit" value="Buscar">
	</form>
</div>
	<div style="margin: 0px auto">
<?php
			include_once("../classes/sacar.class.php");
			$self=sacar($_SERVER['PHP_SELF'],"admin/",".php");	
			include_once("classes/buscador.class.php");
			$sql = "SELECT hotel_tarifa.id,hotel_tarifa.nombre,hotel_tarifa.cantidad,hotel_moneda.nombre FROM hotel_tarifa INNER JOIN hotel_moneda ON hotel_tarifa.moneda = hotel_moneda.id ";
			$celdas=array(0=>'id',1=>'nombre',2=>'cantidad',3=>'moneda');
			$pez=" WHERE hotel_tarifa.nombre like '%" . $criterio . "%' OR hotel_tarifa.cantidad like '%" . $criterio . "%' OR hotel_moneda.nombre like '%" . $criterio . "%' ";
			$set='if_tarifa_a.php';
			$borra=2;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>