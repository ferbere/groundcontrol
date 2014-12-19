<?php
date_default_timezone_set('America/Chicago'); 
if($_GET['command']){
	$command=$_GET['command'];
}
	$filename='/Applications/xampp/htdocs/congreso/admin/gadgets/respaldo/respaldos/';
/*
	$dbhost = 'mysql912.ixwebhosting.com';
	$dbuser = 'ferbere_ramses';
	$dbpass = 'dartagnan';
	$dbname = 'ferbere_congreso';
*/	
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname = 'congreso';
	
	$command = "mysql --opt ";
	system($command);
	exit();
}else{
	echo "¡Algo ha salido mal!";
}
?>
