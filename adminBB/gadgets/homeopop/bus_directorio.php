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
		$ruta='bus_directorio.php';
	}
?>
<div align="center">
	<form action="comprar.php" method="get">
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
			$sql = "SELECT homeopop_directorio_medicos.id,homeopop_directorio_medicos.user,homeopop_directorio_medicos.name,homeopop_directorio_medicos.city,homeopop_directorio_medicos.state,homeopop_directorio_medicos.country,general_visible.nombre FROM homeopop_directorio_medicos INNER JOIN general_visible ON homeopop_directorio_medicos.activated = general_visible.id ";
			$celdas=array(0=>'id',1=>'user',2=>'name',3=>'city',4=>'state',5=>'country',6=>'activated');
			$pez=" WHERE homeopop_directorio_medicos.id > 0 AND homeopop_directorio_medicos.name like '%" . $criterio . "%' or homeopop_directorio_medicos.city like '%" . $criterio . "%' or homeopop_directorio_medicos.state like '%" . $criterio . "%' or homeopop_directorio_medicos.country like '%" . $criterio . "%' ";
			$set='if_directorio_a.php';
			$borra=5;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>