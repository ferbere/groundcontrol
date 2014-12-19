<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
	$sql = $mysql->consulta("SELECT imagen,ruta FROM gadgets_botones WHERE posicion = 4 ORDER BY id ASC");
	echo '<div id="botones_sociales">';
	  while($row = $mysql->fetch_array($sql)){  
		echo '<a href="'.$row[1].'" target="_blank"><img src="style/images/'.$row[0].'.png"></a>';  
	  }
?>
	</div>