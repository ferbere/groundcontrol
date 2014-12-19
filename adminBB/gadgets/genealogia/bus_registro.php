<?php
if (isset($_GET['pag'])){
	$pag=$_GET['pag'];
}else{
	$pag=0;
}
if(isset($_GET['criterio'])){
	$criterio = $_GET['criterio'];
}else{
	$criterio='';
}
if(isset($_GET['ruta'])){
	$ruta = $_GET['ruta'];
}
	if(empty($ruta)){
		$ruta='bus_registro.php';
	}
?>
<div align="center">
	<form action="genealogia.php" method="get">
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
			$sql = "SELECT genealogia_index.id,genealogia_index.nombre,genealogia_index.fecha_nac,genealogia_generacion.nombre FROM genealogia_index INNER JOIN genealogia_generacion ON genealogia_index.generacion = genealogia_generacion.id ";
			$celdas=array(0=>'id',1=>'nombre',2=>'fecha nacimiento',3=>'generación');
			$pez=" where genealogia_index.nombre like '%" . $criterio . "%' or genealogia_index.fecha_nac like '%" . $criterio . "%'  or genealogia_generacion.nombre like '%" . $criterio . "%'";
			$set='if_registro_a.php';
			$borra=1;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>