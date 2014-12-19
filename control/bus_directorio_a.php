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
	<form action="control.php" method="get">
	Criterio de búsqueda:
		<input type="hidden" name="ruta" value="<?php echo $ruta ?>">
		<input type="text" name="criterio" size="22" maxlength="150">
		<input type="submit" value="Buscar">
	</form>
</div>
	<div style="margin: 0px auto">
<?php
//	if(!empty($criterio)){		
			$self="control";	
			include_once("admin/classes/buscador_directorio_a.class.php");
			$sql = "SELECT homeopop_directorio.id,homeopop_directorio.nombre,homeopop_directorio.poblacion,homeopop_directorio.email,homeopop_directorio.telefono,homeopop_directorio.celular,general_visible.nombre FROM homeopop_directorio INNER JOIN general_visible ON homeopop_directorio.activated = general_visible.id ";
			$celdas=array(0=>'id',1=>'nombre',2=>'poblacion',3=>'email',4=>'telefono',5=>'celular');
			$pez=" WHERE homeopop_directorio.id > 0 AND homeopop_directorio.nombre like '%" . $criterio . "%' or homeopop_directorio.poblacion like '%" . $criterio . "%' or homeopop_directorio.estado like '%" . $criterio . "%' or homeopop_directorio.recomienda like '%" . $criterio . "%' ";
			$set='consulta.php';
			$borra=2;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
//	}		
?>
	</div>