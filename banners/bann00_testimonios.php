	<?php
if(isset($_GET['testimonio'])){
	$testimonio=$_GET['testimonio'];
}
if(isset($_GET['seleccion'])){
	$seleccion=$_GET['seleccion'];
}
include_once("classes/recorte.php");
include_once("classes/mysql.php");
$mysql=new MySQL();
if(empty($testimonio)){
	$seleccion = " ";
	$referer="";
	$div = '';
	
}else{
	$seleccion = " AND id = $testimonio";
	$referer='<div id="bann0_2">
	<a href="'.$_SERVER['HTTP_REFERER'].'">
	<div id="regresar" class="fa-reply"></div>
	</a></div>';
	$div = '_Div';
}
	$sql=$mysql->consulta("SELECT id,titulo,imagen,contenido FROM testimonios_index WHERE visible = 1 ".$seleccion." ORDER BY orden LIMIT 3 ");
?>
<div id="bann00_testimonios">
	<article>
		<h1>Testimonios</h1>
<?php
		//echo '<table id="">';
	$i=1;
	while($row=$mysql->fetch_array($sql)){
		echo 	'<div id="bann00_testimonios'.$i.'">';
		echo 		'<div id="bann00_testimonios1_1">';
		echo 				'<img src="images/testimonios/'.$row['imagen'].'">';
		echo 		'</div>';
		echo 		'<div id="bann00_testimonios2_2">';
		echo 			'<h2>'.$row['titulo'].'</h2>';
		if(!empty($testimonio)){
		echo 			'<p>'.$row['contenido'].'</p>';
		}else{
		echo 			'<p>'.cut_string($row['contenido'],150);	
		echo 			'<a href="'.$_SERVER['PHP_SELF'].'?testimonio='.$row['id'].'">';
		echo 			'Leer más';
		echo 			'</a></p>';
		}
		echo 			$referer;
		echo 		'</div>';
		echo 	'</div>';
		$i=$i+1;
	}
?>
	</article>
</div>