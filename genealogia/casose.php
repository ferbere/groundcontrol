<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
if($_GET['rubro']){
	$rubro=$_GET['rubro'];
}
//CASOSE
if($row['casose']==0){// NO SÉ SI SE CASÓ
	echo "No tengo registro sobre su estado civil.";
}elseif($row['casose']==1){//SÍ SE CASÓ
	$sql2=$mysql->consulta("SELECT genealogia_conyuge.parent,genealogia_conyuge.conyuge,genealogia_index.id,genealogia_index.nombre FROM genealogia_conyuge INNER JOIN genealogia_index ON genealogia_conyuge.parent = genealogia_index.id || genealogia_conyuge.conyuge = genealogia_index.id WHERE genealogia_conyuge.parent = '$rubro' || genealogia_conyuge.conyuge = '$rubro' ");
	$cuenta_sql2=$mysql->num_rows($sql2);
	if($cuenta_sql2==0){								// Sé cuándo, pero no sé con quién
		if($row['fecha_mat']!='0000-00-00'){
			echo 'Se casó sí, el día '.$row['fecha_mat'].' pero ignoro con quién<br>';
		}else{											// Ignoro cuándo y con quién
			echo 'Se casó sí, pero ignoro cuándo y con quién<br>';
		}
	}else{												// Sí sé con quién...
		while($row2=$mysql->fetch_array($sql2)){
			if($row2[2]!=$rubro){
				if($row['fecha_mat']=='0000-00-00'){	//...pero no sé cuándo
					echo 'Se casó sí, ';
					echo 'con <b>
					<a href="genealogia.php?ruta=perfil.php&rubro='.$row2[2].'">'.$row2[3].'
					</a></b>, pero no sé cuándo.<br>';
				}else{									//...sí sé cuándo
					echo 'Se casó sí, el día '.$row['fecha_mat'].', con <b>
					<a href="genealogia.php?ruta=perfil.php&rubro='.$row2[2].'">'.$row2[3].'
					</a></b><br>';
				}
			}
		}
	}
}elseif($row['casose']==2){// SÍ SÉ QUE NO SE CASÓ
	if($row['fecha_fal']=='0000-00-00'){
		echo 'No se ha casado';
	}else{
		echo 'No se casó';
	}
}
?>