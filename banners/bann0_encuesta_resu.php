<?php
session_start();
include_once("classes/mysql.php");
include_once("classes/quiz_result.class.php");
include_once("classes/buclesub.class.php");

$mysql=new MySQL();
if(isset($_POST['sub2'])){
	$sub2=$_POST['sub2'];
}
if(isset($_GET['sub2'])){
	$sub2=$_GET['sub2'];
}
	$sql9=$mysql->consulta("SELECT quiz_ques.id,quiz_ques.quiz FROM quiz_ques INNER JOIN quiz_index ON quiz_ques.quiz = quiz_index.id WHERE quiz_index.visible = 1 ORDER BY quiz_ques.id ASC LIMIT 1");
	$row9=$mysql->fetch_array($sql9);
	$sub2b=$row9[0];
	$sub2c=$row9[1];
if(empty($sub2)){
	$sub2=$row9[0];
}
if(!isset($_SESSION['quiz_id'])){
	$qqq=$sub2c;
}else{
	$qqq=$_SESSION['quiz_id'];
}
$tot_pre=new bucleSub($qqq,'','','');//("#Quiz","iteracion","Total preguntas del quiz")
$sql=$mysql->consulta("SELECT pregunta FROM quiz_ques WHERE id = '$sub2' ");
$row=$mysql->fetch_array($sql);
	$tot_pregg=$tot_pre->qQ();
	$tot_preg=$tot_pregg[0];
	
	if($sub2==$sub2b){
		$nomb=1;
	}else{
		$nomb=($sub2-$sub2b)+1;
	}
	echo '<div id="quiz_resu">';
	echo '<table>';
	echo '<tr>';
	echo '<td>';
	echo '<table id="res">';
	echo '<tr><td colspan="4"><h1>'.$row[0].'</h1></td></tr>';
	echo '<tr><td colspan="4"><h4>('.$nomb.'  de '.$tot_preg.' preguntas)</h4></td></tr>';
$sql2=$mysql->consulta("SELECT id,respuesta FROM quiz_answ WHERE ques = '$sub2' ");
$quiz=new quiz_result($qqq,$sub2);
$ir=$quiz->qu_Re();
$cuenta=$ir[1];
$trepida=$ir[2];
$ggg=$nomb-1;
for($i=0;$i<$cuenta;$i++){
	$mas[]= $trepida[$i][$ggg];
}
$graf = array_count_values($mas);
$h=1;
while($row2=$mysql->fetch_array($sql2)){
	if($graf[$row2[0]]==''){
		$rout=0;
	}else{
		$rout=$graf[$row2[0]];
	}
	$pntj=number_format(($rout*100)/$cuenta,0);
	echo '<tr>';
	echo '<td id="r1">'.$row2[1].'</td>';
	echo '<td id="r2"><small><b>('.$rout.' votos)</b></small></td>';
	echo '<td id="r3"></td>';
	echo '<td id="r4"><div id="res'.$h.'" style="width:'.$pntj.'%">'.$pntj.'%</div></td>';
	echo '</tr>';
	$h=$h+1;
}
?>
	<tr>
		<td></td>
		<td colspan="3"><small><? echo $cuenta ?> votantes</small></td>
	</tr>
	<tr><td colspan="4" height="20px"></td></tr>
	<tr>
		<td></td>
		<td colspan="3">
	<form action="encuesta.php" method="post">
	<input type="hidden" name="sub" value="cero">
	<input type="hidden" name="sub2" value="<?php echo ($sub2+1);?>">
	<?php
	if($nomb==$tot_preg){
		echo 'Se acab&oacute;';
		unset($_SESSION['quiz_id']);
	}else{
	//	setcookie("fecha", "", time()-3600);	
		echo '<input type="submit" value="siguiente">';
	}
	?>
		</td>
	</tr>
</table>
</td>
<td><div></div>
	</td>
</tr>
</table>
</div>