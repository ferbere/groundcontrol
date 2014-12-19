<?php 
session_start();
include("style/header_admin.html");
$link=Conectarse();
?>
<!-- <script language="JavaScript">
function muestra(queCosa)
{
	alert(queCosa);
}
</script> -->
<br><div align="center">
<form action="bus_botones.php" method="get">
Criterio de búsqueda:
<input type="text" name="criterio" size="22" maxlength="150">
<input type="submit" value="Buscar">
</form>
</div>
<?php 
if(isset($_GET['criterio'])){
        //inicializo el criterio y recibo cualquier cadena que se desee buscar
        $criterio = "";
        if ($_GET["criterio"]!=""){
	$txt_criterio = $_GET["criterio"];
	$criterio = " WHERE nombre like '%" . $txt_criterio . "%'";
}

	$sql="SELECT * FROM submenu ".$criterio;
	$res=mysql_query($sql);
	$numeroRegistros=mysql_num_rows($res);
	if($numeroRegistros<=0)
	{
		echo "<div align='center'>";
		echo "<font face='verdana' size='-2'>No se encontraron resultados</font>";
		echo "</div>";
	}else{
		//////////elementos para el orden
		if(!isset($orden))
		{
			$orden="id";
		}
		//////////fin elementos de orden

		//////////calculo de elementos necesarios para paginacion
		//tamaño de la pagina
		$tamPag=10;

		//pagina actual si no esta definida y limites
		if(!isset($pagina))
		{
			   $pagina=1;
			   $inicio=1;
			   $final=$tamPag;
		}
		//calculo del limite inferior
		$limitInf=($pagina-1)*$tamPag;

		//calculo del numero de paginas
		$numPags=ceil($numeroRegistros/$tamPag);
		if(!isset($pagina))
		{
			   $pagina=1;
			   $inicio=1;
			   $final=$tamPag;
		}else{
			$seccionActual=intval(($pagina-1)/$tamPag);
			$inicio=($seccionActual*$tamPag)+1;

			if($pagina<$numPags)
			{
			   $final=$inicio+$tamPag-1;
			}else{
				$final=$numPags;
			}
                
                if ($final>$numPags){
                     $final=$numPags;
		    }
		}

		//////////fin de dicho calculo

		//////////creacion de la consulta con limites
		$sql="SELECT * FROM submenu ".$criterio." ORDER BY ".$orden.",id DESC LIMIT ".$limitInf.",".$tamPag;
		$res=mysql_query($sql);

		//////////fin consulta con limites
		echo "<div align='center'>";
		echo "<font face='verdana' size='-2'>encontrados ".$numeroRegistros." resultados<br>";
		echo "ordenados por <b>".$orden."</b>";
                if(isset($txt_criterio)){
		echo "<br>Valor filtro: <b>".$txt_criterio."</b>";
                }
		echo "</font></div><div>";
		echo "<table align='center' width='600' border='0' cellspacing='1' cellpadding='0'>";
		echo "<tr><td colspan='3'></td></tr>";
		echo "<th ><a class='ord' href='".$_SERVER["PHP_SELF"]."?pagina=".$pagina."&orden=nombre&criterio=".$txt_criterio."'>Título</a></th>";
		echo "<th ><a class='ord' href='".$_SERVER["PHP_SELF"]."?pagina=".$pagina."&orden=vin&criterio=".$txt_criterio."'>Vincula a</a></th>";
		while($registro=mysql_fetch_array($res))
		{
			
		$sql_vincula=mysql_query("SELECT * FROM botones WHERE id = ".$registro['vin'],$link);
		while($row_vincula=mysql_fetch_array($sql_vincula)){
			$vincula=$row_vincula['nombre'];
		}
			
?>
<!-- tabla de resultados -->
  <tr onMouseOver="this.style.backgroundColor='#2B5893';this.style.cursor='hand';" onMouseOut="this.style.backgroundColor=''"o"];" onClick="javascript:muestra('<? echo "[".$registro["id"]."] ".$registro["nombre"]; ?>');">
    <td align="justify"><b><a href='if_submenu_a.php?rubro=<?php echo $registro['id'] ?>'><? echo $registro["nombre"]; ?></a></b></font></td>
    <td align="center"><b><? echo $vincula; ?></b></font></td>
    <td><a href="borra.php?borra=17&rubro=<?php echo $registro['id'] ?>">borrar</a></td>
  </tr>
<!-- fin tabla resultados -->
<?
		}//fin while
		echo "</table>";
	}//fin if
	//////////a partir de aqui viene la paginacion
?>
	<br>
	<table border="0" cellspacing="0" cellpadding="0" align="center">
	<tr><td align="center" valign="top">
<?
	if($pagina>1)
	{
		echo "<a class='p' href='".$_SERVER["PHP_SELF"]."?pagina=".($pagina-1)."&orden=".$orden."&criterio=".$txt_criterio."'>";
		echo "<font face='verdana' size='-2'>anterior</font>";
		echo "</a>&nbsp;";
	}

	for($i=$inicio;$i<=$final;$i++)
	{
		if($i==$pagina)
		{
			echo "<font face='verdana' size='-2'><b>".$i."</b>&nbsp;</font>";
		}else{
			echo "<a class='p' href='".$_SERVER["PHP_SELF"]."?pagina=".$i."&orden=".$orden."&criterio=".$txt_criterio."'>";
			echo "<font face='verdana' size='-2'>".$i."</font></a>&nbsp;";
		}
	}
	if($pagina<$numPags)
	{
		echo "&nbsp;<a class='p' href='".$_SERVER["PHP_SELF"]."?pagina=".($pagina+1)."&orden=".$orden."&criterio=".$txt_criterio."'>";
		echo "<font face='verdana' size='-2'>siguiente</font></a>";
	}
}

	//////////fin de la paginacion
?>
	</td></tr>
	</table>
<?php
include("style/footer_admin.html"); ?>
