<?php
include_once("classes/conex.php");
$link = Conectarse();  
require_once('classes/template.class.php');
$tp=new templateParser('template/template_nivel2.tpl');

//$nivel1=array("nivel1_1"=>"style/navbar.php","nivel1_2"=>"maqueta/iniciativas_fraccion.php","nivel1_3"=>"maqueta/opinion.php","nivel1_4"=>"maqueta/banner2.php");

$consulta = mysql_query("SELECT bann1,bann2,bann3,bann4,bann0 FROM template_index WHERE pagina = 'nivel2' ",$link);
	while($row = mysql_fetch_array($consulta)){  
		$tp->parseTemplate($row);
		echo $tp->display();
}
?>
