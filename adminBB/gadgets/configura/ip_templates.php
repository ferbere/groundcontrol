<?php
session_start();
include_once('../../../classes/conex.php');
$link=Conectarse();
if(isset($_POST["rubro"])){
	$rubro=$_POST["rubro"];
}
if(isset($_POST["pagina"])){
	$pagina=$_POST["pagina"];
}
if(isset($_POST["css"])){
	$css=$_POST["css"];
}
if(isset($_POST["title"])){
	$title=$_POST["title"];
}
if(isset($_POST["header"])){
	$header=$_POST["header"];
}
if(isset($_POST["navbar"])){
	$navbar=$_POST["navbar"];
}
if(isset($_POST["logo"])){
	$logo=$_POST["logo"];
}
if(isset($_POST["tit_maincontent"])){
	$tit_maincontent=$_POST["tit_maincontent"];
}
if(isset($_POST["maincontent"])){
	$maincontent=$_POST["maincontent"];
}
if(isset($_POST["main_object"])){
	$main_object=$_POST["main_object"];
}
if(isset($_POST["detail"])){
	$detail=$_POST["detail"];
}
if(isset($_POST["footer"])){
	$footer=$_POST["footer"];
}
if(isset($_POST["bann1"])){
	$bann1=$_POST["bann1"];
}
if(isset($_POST["bann2"])){
	$bann2=$_POST["bann2"];
}
if(isset($_POST["bann3"])){
	$bann3=$_POST["bann3"];
}
if(isset($_POST["bann4"])){
	$bann4=$_POST["bann4"];
}
if(isset($_POST["bann0"])){
	$bann0=$_POST["bann0"];
}
$que=mysql_query("INSERT INTO template_index (pagina,css,title,header,navbar,logo,tit_maincontent,maincontent,main_object,detail,footer,bann1,bann2,bann3,bann4,bann0) VALUES ('{$pagina}','{$css}','{$title}','{$header}','{$navbar}','{$logo}','{$tit_maincontent}','{$maincontent}','{$main_object}','{$detail}','{$footer}','{$bann1}','{$bann2}','{$bann3}','{$bann4}','{$bann0}')",$link);
if(!$que){die ("Pos no se captur� el contenido, parece que: " .mysql_error());
}else{
	echo '<script>window.location.href="../../configura.php?ruta=if_templates.php&capturado=1";</script>';
}
?>