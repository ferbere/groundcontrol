<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
include_once("classes/buclesub.class.php");
$bucle1=new bucleSub('','','','');//("#Quiz","iteracion","Total preguntas del quiz")
$bb1=$bucle1->qQ();
if(isset($_POST['sub'])){
	$sub=$_POST['sub'];
}
if(isset($_GET['sub'])){
	$sub=$_GET['sub'];
}
$_SESSION['quiz_id']=$bb1[1];
if($sub!='cero'){
	if(empty($sub)){
		$sub=$bb1[2];
	}
	$bucle2=new bucleSub($bb1[1],$sub,$bb1[0],$bb1[2]+1);
		$bb2=$bucle2->bS();
		echo $bb2.'<br><br>';

		$bb3=$bucle2->qSess();
		$elquiz		 = $bb3[1];
		$larespuesta = $bb3[2];

		if($sub<($bb1[0]+$bb1[2])){
/*			if(isset($_COOKIE['fecha'])){
				header("Location: encuesta.php?sub=cero");
			}*/
		}else{
			header("Location: encuesta.php?sub=cero");
			unset($_SESSION['quiz']);
//			$fecha=date("d/m/Y | H:i:s"); 
//			setcookie("fecha",$fecha,time()+345600);
			$sql = $mysql->consulta("INSERT INTO quiz_resu (quiz,answ) VALUES ('{$elquiz}','{$larespuesta}') ");
			if(!$sql){
				die ("Pos no se capturó el contenido, parece que: " .mysql_error());
			}
			exit;
		}
}elseif($sub=='cero'){
	echo "Muchas gracias por participar.";
	include("banners/bann0_encuesta_resu.php");
}
?>