<?php
session_start();
extract($_SESSION);
if(isset($_SESSION['carro'])){
	$carro=$_SESSION['carro'];	
}else{
	$carro=false;
	}
if(isset($_GET['dia_actual'])){
	$dia_actual = $_GET['dia_actual'];
}
if(isset($_GET['nuevo_mes'])){
	$nuevo_mes = $_GET['nuevo_mes'];
}
if(isset($_GET['nuevo_ano'])){
	$nuevo_ano = $_GET['nuevo_ano'];
}
echo '<table id="bann2_1">';
if(empty($_SESSION['estado'])){
	echo 	'<tr>';
	echo 		'<td id="bann2_1td1">';
	echo 			'<h1>Sign in is requiered to schedule</h1>';
	echo 			'<a href="'.$_SERVER['PHP_SELF'].'?ruta=login.php">Sign in</><br>';
	echo 			$apart;
	echo 		'</td>';
	echo 	'</tr>';
}else{
	include_once("classes/mysql.php");
	$mysql = new MySQL();
	if(empty($dia_actual)){
		$seleccion = '';
	}else{
		$seleccion = ' WHERE id = '.$dia_actual;
	}
	if(empty($carro[$user]['villa'])){
		$caal = '';
	}else{
		$caal = ' WHERE id = '.$carro[$user]['villa'];
	}
	if(empty($carro[$user]['fecha_A'])){
		$book = 'from';
	}else{
		$book = 'until';
	}
	$sql = $mysql->consulta("SELECT id,nombre FROM catalogo_index".$caal);
		while($row=$mysql->fetch_array($sql)){
			$id		= $row[0];
			$nombre	= $row[1];
			$sql_comprar = $mysql->consulta("SELECT id,pedido FROM comprar_index WHERE catalogo = '$id' AND pedido LIKE '$fecha'");
			$row_comprar = $mysql->fetch_array($sql_comprar);
			if($row_comprar[0]==''){
				$availability = ' is available for '.$nuevo_mes.'/'.$dia_actual.'/'.$nuevo_ano;
				$apart = '<a href="availability.php?ruta=agregacar.php&nuevo_mes='.$nuevo_mes.'&nuevo_ano='.$nuevo_ano.'&dia_actual='.$dia_actual.'&villa='.$id.'">Book date '.$book.'</a>';
			}/*elseif(($row_comprar[0]!='')&&(empty($_SESSION))){
				$availability = 'You should sign in for booking';
				$apart = '<a href="index.php">sign in</a>';
			}*/else{
				$availability = 'not available';
				$apart='';
			}
			echo 	'<tr>';
			echo 		'<td id="bann2_1td1">';
			echo 			'<h1>'.$row[1].'</h1>';
			echo 			$availability.'<br>';
			echo 			$apart;
			echo 		'</td>';
			echo 	'</tr>';
		}
}
echo '</table>';