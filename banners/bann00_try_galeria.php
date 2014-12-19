<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
//echo $_POST['variable_galeria'];
$sql = $mysql->consulta("SELECT id,imagen,nombre,descripcion FROM fotos_index ORDER BY fecha DESC LIMIT 1");
//$sql = $mysql->consulta("SELECT id,imagen,ext FROM fotos_index WHERE id = ".$_POST['variable_galeria']);
//$cuenta2 = $mysql->num_rows($sql);
?>
	<div id="try_galeria">
		<div id="try_galeria_titulo">Galería de fotos</div>
		<?php
		while($row=$mysql->fetch_array($sql)){
			echo '<div id="try_galeria_imagen">';
			echo 	'<a href="fotos.php">';
			echo 		'<img src="images/fotos/'.$row[1].'">';
			echo 	'</a>';
			echo '</div>';
			echo '<div id="try_galeria_caption">';
			echo $row[2];
			echo '</div>';
		}
?>
	</div>
