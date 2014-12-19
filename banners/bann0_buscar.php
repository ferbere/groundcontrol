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
<div id="bann-0">
	<div style="margin: 0px auto">
<?php
			include_once("admin/classes/sacar.class.php");
			$self=sacar($_SERVER['PHP_SELF'],"admin/",".php");	
			include_once("admin/classes/buscador_bann0_buscar.class.php");
//			$sql = "SELECT id,titulo,subtitulo FROM articulos_index ";
			$sql = "SELECT articulos_index.id,articulos_index.titulo,articulos_index.subtitulo,articulos_categoria.nombre,articulos_index.imagen,articulos_ediciones.nombre,articulos_index.contenido,articulos_index.publicado,usuario_index.nombre FROM articulos_index INNER JOIN articulos_categoria ON articulos_index.categoria = articulos_categoria.id INNER JOIN articulos_ediciones ON articulos_index.edicion = articulos_ediciones.id INNER JOIN usuario_index ON articulos_index.autor = usuario_index.id ";
			$celdas=array(0=>'id',1=>'titulo',2=>'subtitulo');
			$pez=" where articulos_index.titulo like '%" . $criterio . "%' or articulos_index.subtitulo like '%" . $criterio . "%' or articulos_index.contenido like '%" . $criterio . "%' or articulos_categoria.nombre like '%" . $criterio . "%' or articulos_ediciones.nombre like '%" . $criterio . "%' or usuario_index.nombre like '%" . $criterio . "%'";
			$set='index.php';
			$order=" ORDER BY id DESC LIMIT ";
			$clPag = new paginacion();
			$clPag->cuantos($sql,$pez);
			$clPag->pagina($pag,$sql,$pez,$set,$order,$celdas,$self);
			$clPag->pie($pag,$sql,$pez,$self);
?>
	</div>