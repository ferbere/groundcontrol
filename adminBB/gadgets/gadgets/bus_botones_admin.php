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
		$ruta='bus_botones_admin.php';
	}
?>
<div align="center">
	<form action="gadgets.php" method="get">
	Criterio de b�squeda:
		<input type="hidden" name="ruta" value="<?php echo $ruta ?>">
		<input type="text" name="criterio" size="22" maxlength="150">
		<input type="submit" value="Buscar">
	</form>
</div>
	<div style="margin: 0px auto">
<?php
//			include_once("../classes/sacar.class.php");
			$self=sacar($_SERVER['PHP_SELF'],"admin/",".php");
			include_once("classes/buscador.class.php");
//			$sql = "SELECT id,boton,ruta,gadget FROM gadgets_botones_admin ";
			$sql = "SELECT gadgets_botones_admin.id,gadgets_botones_admin.boton,gadgets_botones_admin.ruta,gadgets_index.gadget,general_visible.nombre FROM gadgets_botones_admin INNER JOIN gadgets_index ON gadgets_botones_admin.gadget = gadgets_index.id INNER JOIN general_visible ON gadgets_botones_admin.visible = general_visible.id ";

			$celdas=array(0=>'id',1=>'boton',2=>'ruta',3=>'gadget',4=>'visible');
			$pez=" where gadgets_botones_admin.boton like '%" . $criterio . "%' or gadgets_botones_admin.ruta like '%" . $criterio . "%' or gadgets_index.gadget like '%" . $criterio . "%'";
			$set='if_botones_admin_a.php';
			$ruta='bus_botones_admin.php';
			$borra=3;
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$borra,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>