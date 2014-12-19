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
		$ruta='buscar.php';
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
			include_once("admin/classes/sacar.class.php");
			$self='genealogia';
			include_once("admin/classes/buscador_genealogia.class.php");
			if(!empty($criterio)){
			$sql = "SELECT genealogia_index.id,genealogia_index.nombre,genealogia_index.ocupacion,genealogia_generacion.nombre FROM genealogia_index INNER JOIN genealogia_generacion ON genealogia_index.generacion = genealogia_generacion.id ";
			$celdas=array(0=>'id',1=>'nombre',2=>'ocupación',3=>'generación');
			$pez=" where genealogia_index.nombre like '%" . $criterio . "%' or genealogia_index.ocupacion like '%" . $criterio . "%' or genealogia_index.fecha_nac like '%" . $criterio . "%' or genealogia_index.fecha_mat like '%" . $criterio . "%' or genealogia_index.fecha_fal like '%" . $criterio . "%' or genealogia_generacion.nombre like '%" . $criterio . "%'";
			$set='perfil.php';
			$ruta='buscar.php';
			$order=" ORDER BY id DESC LIMIT ";
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$order,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
		}
?>
	</div>