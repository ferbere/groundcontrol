<?php
date_default_timezone_set('America/Chicago'); 
if($_GET['command']){
	$command=$_GET['command'];
}
	$filename='./gadgets/respaldo/respaldos/';
//	$dbhost = 'mysql912.ixwebhosting.com';
	$dbhost = 'localhost';
//	$dbuser = 'ferbere_ramses';
	$dbuser = 'root';
//	$dbpass = 'dartagnan';
	$dbpass = '';
//	$dbname = 'ferbere_congreso';
	$dbname = 'congreso';
	$backupFile = $filename . $dbname ."-". date("Y-m-d")."--".date("H:i:s") . '.sql';
if(isset($_GET['capturado'])){
	$capturado=$_GET['capturado'];
}
if(empty($capturado)){
	echo '¿Listo? <a href="respaldo.php?ruta=exe_respaldo.php&capturado=1">respalda</a>';
}elseif($capturado==1){
	$command = "mysqldump --opt --host=".$dbhost." --user=".$dbuser." ".$dbname." > ".$backupFile;
	system($command);
	header("Location:respaldo.php?ruta=exe_respaldo.php&capturado=2");
	exit();
}else{
	echo "<strong>//ATENCIÓN//</strong><br>La base de datos: <b>".$dbname."</b> ha sido respaldada y está en la carpeta <b>respaldos</b>, dentro de este gadget";
}
?>
