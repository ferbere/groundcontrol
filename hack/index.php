<html>
<head>
<title>hack</title>
<meta http-equiv="refresh" content="60" />
</head>
<body>
<?php
$link = mysql_connect('mysql912.ixwebhosting.com', 'ferbere_ramses', 'dartagnan')
    or die('No se pudo conectar: ' . mysql_error());
mysql_select_db('ferbere_congreso') or die('No se pudo seleccionar la base de datos');


if(isset($val1)){
	$val1=$_GET['val1'];
}
if(isset($val2)){
	$val2=$_GET['val2'];
}
$sql=mysql_query("SELECT COUNT(id) FROM quiz_resu WHERE answ ='51 53 55 57' UNION SELECT COUNT(id) FROM quiz_resu WHERE answ !='51 53 55 57'",$link);
$i=1;
while($row=mysql_fetch_array($sql)){
	$val[$i]=$row[0];
	$i=$i+1;
}
//igual 		$val[1];
//diferente  	$val[2];
$dif=($val[1]-$val[2]);
echo $dif;
if($dif<0){
	$sql2=mysql_query("INSERT INTO quiz_resu (quiz,answ) VALUES (5,'51 53 55 57')",$link);
}else{
 echo 'nain';
}
?>
</body>
</html>