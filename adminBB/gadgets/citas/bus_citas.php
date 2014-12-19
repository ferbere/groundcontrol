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
		$ruta='bus_citas.php';
	}
?>
<div align="center">
	<form action="citas.php" method="get">
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
			$sql = "SELECT citas_index.id,citas_index.autor,citas_index.contenido,general_visible.nombre,perfil_index.nombre FROM citas_index  INNER JOIN perfil_index ON citas_index.diputado = perfil_index.id INNER JOIN general_visible ON citas_index.visible = general_visible.id WHERE citas_index.id != 0 ";
			$celdas=array(0=>'id',1=>'autor',2=>'imagen',3=>'visible',4=>'diputado');
			$pez=" and citas_index.autor like '%" . $criterio . "%' or citas_index.contenido like '%" . $criterio . "%' or perfil_index.nombre like '%" . $criterio . "%'";
			$set='if_citas_a.php';
			$ruta='bus_citas.php';
			$borra=1;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>