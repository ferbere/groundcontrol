<?php
include_once("classes/linea3.class.php");
include_once("classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$viene=uno($rubro,$dos,$tres);
for($i=1;$i<$viene[3];$i++){
	if($i==1){
		$padre 			= uno($rubro);
		$salida_padre	= $padre[1];
	}else{
		$padre 			= uno($salida_padre);
		$salida_padre	= $padre[1];
	}
	$result[$i] = $padre[1];
	$result2[$i] = $padre[2];
}
for($e=count($result);$e>=1;$e--){
	echo $result2[$e].'<br><br>';
		$viene_dos=dos($result[$e]);
}
//		$site=366;
//		$viene_dos=dos($site);
//		for($o=1;$o<=$viene_dos[2];$o++){
/*			if($o==1){
				$padre2 		= dos($site);
				$salida_padre2	= $padre2[1];
			}else{
				$padre2			= dos($salida_padre2);
				$salida_padre2	= $padre2[1];
			}*/
//			echo $o.'<br>';
//			$result_dos[$o] = $viene_dos[1];
//			echo $result_dos[$o].'<br>';
//		}
//print_r ($viene_dos);
?>