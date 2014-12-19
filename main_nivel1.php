<?php
include_once("classes/conex.php");
$link = Conectarse();  
require_once('classes/template.class.php');
$tp=new templateParser('template/template_nivel1.tpl');

$consulta = mysql_query("SELECT bann1,bann2,bann3,bann4 FROM template_index WHERE pagina = 'nivel1' ",$link);
	while($row = mysql_fetch_array($consulta)){  
		$tp->parseTemplate($row);
		echo $tp->display();
}
?>
