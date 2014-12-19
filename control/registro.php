<?php
if(isset($_GET['ruta'])){
	$ruta=$_GET['ruta'];
}
if(empty($ruta)){
	echo '<a href="control.php?ruta=if_directorio.php">No está registrado</a>';
}
?>
