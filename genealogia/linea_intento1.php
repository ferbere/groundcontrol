<?php
$row=$mysql->fetch_array($sql);
for($i=$row[0];$i>1;$i--){
//	for($i=1;$i<=$row[0];$i++){
	if($i==$row[0]){
		$pasa 			= linea($rubro,$i-1,$row[0],$row[1]);
		$salida_id 		= $pasa[1];
		$salida_name	= $pasa[2];
	}else{
		$pasa 			= linea($salida_id,$i-1,$row[0],$row[1]);
		$salida_id		= $pasa[1];
		$salida_name	= $pasa[2];
	}
}
?>