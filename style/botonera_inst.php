<?php
include_once("classes/conex.php");  
$link = Conectarse();  
 $consulta = mysql_query("SELECT * FROM gadgets_botones  WHERE posicion = 7 ",$link);
	  while($resultados = mysql_fetch_array($consulta)){
	  	echo '  <a href="'.$resultados['ruta'].'"><img src="style/images/'.$resultados['imagen'].'.jpg" class="rollover"></a>';
	  }
?>
