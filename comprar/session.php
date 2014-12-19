<?php
session_start();
echo '<div id="sesion_1" style="padding-top:5em">';
if($_SESSION['user']!=''){
//	header("Location:sesion.php");
	echo '<div align="center"> Welcome '.$_SESSION['user'].'<br>';
	echo '<a href="control.php">Entrar</a>';
	echo '<br><a href="sesion.php?ruta=destroy_comprar.php">End session</a></div>';
}else{
	if(isset($_POST['capturado'])){
		$capturado=$_POST['capturado'];
	}
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(isset($_GET['adios'])){
		$adios=$_GET['adios'];
	}
	if(isset($_GET['created'])){
		$created=$_GET['created'];
	}
	if(empty($capturado)){
		if(!empty($created)){
			include_once("classes/mysql.php");
			$mysql = new MySQL();
			$sql = $mysql->consulta("SELECT contenido FROM corporativa_index WHERE id = 6");
			while ($row=$mysql->fetch_array($sql)){
				echo $row[0].'<br>';
			}			
		}else{
			include("admin/login_comprar.php");
			echo 	'<div style="margin:0 auto; text-align:center">';
			echo 		'<a href="sesion.php?ruta=account.php">';
			echo 			'create account';
			echo 		'</a>';
			echo 	'</div>';	
		}
	}elseif(!empty($capturado)&&($_SESSION['ip']=='')){
		include("admin/ses_homeopop.php");
	}elseif(!empty($capturado)&&($_SESSION['ip']!='')){
		echo '<div style="text-align:center">';
		echo 'Too many tries!<br> Have you forgotten your user or password?<br>';
		echo '<a href="sesion.php?ruta=restore.php">Restore your password</a>';
		echo '</div>';
	}else{
		
	}
}
echo '</div>';
?>