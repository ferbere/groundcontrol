<?php 
include_once("classes/mysql.php");
$mysql = new MySQL(); 
$consulta=$mysql->consulta("SELECT contenido FROM corporativa_index WHERE id = 29");
  while($resultados = $mysql->fetch_array($consulta)){ 
   echo $resultados['contenido']; 
}
?>
