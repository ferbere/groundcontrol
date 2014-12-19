<?php
session_start();
if(isset($_POST['user'])){
	$user=addslashes(trim($_POST['user']));
}
if(isset($_POST['passwd'])){
	$passwd=md5(addslashes(trim($_POST['passwd'])));
}
include_once("../classes/mysql.php");
$mysql = new MySQL();
$sql=$mysql->consulta("SELECT id,user,passwd FROM comprar_directorio WHERE activated = 1 AND user = '$user' AND passwd = '$passwd'") or die (mysql_error());
while($row=$mysql->fetch_array($sql)){
	$row_id=$row['id'];
	$row_u=$row['user'];
	$row_p=$row['passwd'];
}
?>
	<div align="center">
<?php
if(isset($_GET['loop'])){
	$loop=$_GET['loop'];
}
if(isset($_POST['loop'])){
	$loop=$_POST['loop'];
}
if(empty($loop)){
	$loop=1;
}
if($row_u!=$user OR $row_p!=$passwd){
	$loop = $loop+1;
	if($loop<=3){
		echo $row_u.'<br>';
		echo $row_p.'<br>';
		echo '¡Ooops! There´s something wrong<br>';
		echo '<a href="sesion.php?loop='.$loop.'">Try again.</a><br>';		
	}else{
		header("Location:sesion.php?capturado=1");
		$_SESSION['ip'] = $_SERVER['REMOTE_ADDR'];
	}
}else{
	$_SESSION['id']=$row_id;
	$_SESSION['user']=$row_u;
	$_SESSION['privilegioss']='directivo';
}
?>
	</div>