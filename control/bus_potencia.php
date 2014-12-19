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
		$ruta='bus_potencia.php';
	}
?>
<div align="center">
	<form action="control.php" method="get">
	Criterio de búsqueda:
		<input type="hidden" name="ruta" value="<?php echo $ruta ?>">
		<input type="text" name="criterio" size="22" maxlength="150">
		<input type="submit" value="Buscar">
	</form>
</div>
	<div style="margin: 0px auto">
<?php
			$self="control";	
			include_once("admin/classes/buscador.class.php");
			$sql = "SELECT id,nombre FROM homeopop_potencia ";
			$celdas=array(0=>'id',1=>'nombre');
			$pez=" WHERE id > 0 AND nombre like '%" . $criterio . "%' ";
			$set='if_potencia_a.php';
			$borra=3;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>