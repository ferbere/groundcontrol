<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
if($_GET['rubro']){
	$rubro=$_GET['rubro'];
}
//CASOSE
if($row['casose']==0){// NO S� SI SE CAS�
	echo "No tengo registro sobre su estado civil.";
}elseif($row['casose']==1){//S� SE CAS�
	$sql2=$mysql->consulta("SELECT genealogia_conyuge.parent,genealogia_conyuge.conyuge,genealogia_index.id,genealogia_index.nombre FROM genealogia_conyuge INNER JOIN genealogia_index ON genealogia_conyuge.parent = genealogia_index.id || genealogia_conyuge.conyuge = genealogia_index.id WHERE genealogia_conyuge.parent = '$rubro' || genealogia_conyuge.conyuge = '$rubro' ");
	$cuenta_sql2=$mysql->num_rows($sql2);
	if($cuenta_sql2==0){								// S� cu�ndo, pero no s� con qui�n
		if($row['fecha_mat']!='0000-00-00'){
			echo 'Se cas� s�, el d�a '.$row['fecha_mat'].' pero ignoro con qui�n<br>';
		}else{											// Ignoro cu�ndo y con qui�n
			echo 'Se cas� s�, pero ignoro cu�ndo y con qui�n<br>';
		}
	}else{												// S� s� con qui�n...
		while($row2=$mysql->fetch_array($sql2)){
			if($row2[2]!=$rubro){
				if($row['fecha_mat']=='0000-00-00'){	//...pero no s� cu�ndo
					echo 'Se cas� s�, ';
					echo 'con <b>
					<a href="genealogia.php?ruta=perfil.php&rubro='.$row2[2].'">'.$row2[3].'
					</a></b>, pero no s� cu�ndo.<br>';
				}else{									//...s� s� cu�ndo
					echo 'Se cas� s�, el d�a '.$row['fecha_mat'].', con <b>
					<a href="genealogia.php?ruta=perfil.php&rubro='.$row2[2].'">'.$row2[3].'
					</a></b><br>';
				}
			}
		}
	}
}elseif($row['casose']==2){// S� S� QUE NO SE CAS�
	if($row['fecha_fal']=='0000-00-00'){
		echo 'No se ha casado';
	}else{
		echo 'No se cas�';
	}
}
?>