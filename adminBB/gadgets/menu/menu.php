<?php
include("style/header.html");
//include("conex.php");
$link=Conectarse();
if(isset($_GET['menu'])){
$menu=$_GET['menu'];
}
$sql2=mysql_query("SELECT id,categoria FROM cafeco_categoria_t",$link);
$cuenta=mysql_num_rows($sql2);
if($cuenta > 0){
    for ($i=0; $i<$cuenta;$i++)
    {
        $row2=mysql_fetch_array($sql2);
        $indice[$i]=$row2['id'];
        $valor[$indice[$i]]=$row2['categoria'];
    }
}
?>
<div align="center"><table width="550"  border="0"><tr>
<td colspan="3" align="center" height="10"><table width="500" border="0"><tr>
<?php
if($menu==1){
?>
<td height="10" align="right"><h1>alimentos / bebidas</h1></td></tr>
</table>
</td></tr>
<tr><td colspan="3" height="30"></td></tr>
<?php
$sql=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '1' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $entradas= $row['imagen']; $categoria= $valor[$row['categoria']];  } while ($row=mysql_fetch_array($sql));

$sql6=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '6' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $cafe= $row6['imagen']; $categoria6= $valor[$row6['categoria']]; } while ($row6=mysql_fetch_array($sql6));

$sql2=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '2' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $ensaladas= $row2['imagen']; $categoria2= $valor[$row2['categoria']]; } while ($row2=mysql_fetch_array($sql2));

$sql7=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '7' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $preparados= $row7['imagen']; $categoria7= $valor[$row7['categoria']]; } while ($row7=mysql_fetch_array($sql7));

$sql3=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '3' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $platofuerte= $row3['imagen']; $categoria3= $valor[$row3['categoria']]; } while ($row3=mysql_fetch_array($sql3));

$sql8=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '8' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $ecopaquetes2= $row8['imagen']; $categoria8= $valor[$row8['categoria']]; } while ($row8=mysql_fetch_array($sql8));

$sql4=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '4' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $desayunos= $row4['imagen']; $categoria4= $valor[$row4['categoria']]; } while ($row4=mysql_fetch_array($sql4));

$sql9=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '9' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $barra= $row9['imagen']; $categoria9= $valor[$row9['categoria']]; } while ($row9=mysql_fetch_array($sql9));

$sql5=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '5' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $postres= $row5['imagen']; $categoria5= $valor[$row5['categoria']]; } while ($row5=mysql_fetch_array($sql5));

$sql10=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '10' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $cervezas= $row10['imagen']; $categoria10= $valor[$row10['categoria']]; } while ($row10=mysql_fetch_array($sql10));

$sql11=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '11' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $vinos= $row11['imagen']; $categoria11= $valor[$row11['categoria']]; } while ($row11=mysql_fetch_array($sql11));

$sql15=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '15' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $ecopaquetes3= $row15['imagen']; $categoria15= $valor[$row15['categoria']]; } while ($row15=mysql_fetch_array($sql15));

$sql14=mysql_query("SELECT categoria,imagen FROM cafeco_menu_t WHERE imagen !='' AND categoria = '14' ORDER BY RAND() LIMIT 0,1 ",$link);
do{ $ecopaquetes2= $row14['imagen']; $categoria14= $valor[$row14['categoria']]; } while ($row14=mysql_fetch_array($sql14));


echo '<tr>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria.'"><img src="images/'.$entradas .'.jpg" class="rollover"></a></td></tr></table></td>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria6.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria6.'"><img src="images/'.$cafe.'.jpg" class="rollover"></a></td></tr></table></td></tr>';
echo '<tr>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria2.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria2.'"><img src="images/'.$ensaladas.'.jpg" class="rollover"></a></td></tr></table></td>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria7.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria7.'"><img src="images/'.$preparados.'.jpg" class="rollover"></a></td></tr></table></td></tr>';
echo '<tr>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria4.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria4.'"><img src="images/'.$desayunos.'.jpg" class="rollover"></a></td></tr></table></td>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria8.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria8.'"><img src="images/'.$ecopaquetes2.'.jpg" class="rollover"></a></td></tr></table></td></tr>';
echo '<tr>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria3.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria3.'"><img src="images/'.$platofuerte.'.jpg" class="rollover"></a></td></tr></table></td>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria9.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria9.'"><img src="images/'.$barra.'.jpg" class="rollover"></a></td></tr></table></td></tr>';
echo '<tr>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria5.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria5.'"><img src="images/'.$postres.'.jpg" class="rollover"></a></td></tr></table></td>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria10.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria10.'"><img src="images/'.$cervezas.'.jpg" class="rollover"></a></td></tr></table></td></tr>';
echo '<tr>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria15.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria15.'"><img src="images/'.$ecopaquetes3.'.jpg" class="rollover"></a></td></tr></table></td>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria11.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria11.'"><img src="images/'.$vinos.'.jpg" class="rollover"></a></td></tr></table></td></tr>';
echo '<tr>
<td><table id="menu" border="0" align="right"><tr><td width="100" height="100">'.$categoria14.'</td>
<td width="20"></td>
<td width="100"><a href="'.$_SERVER["PHP_SELF"].'?menu='.$categoria14.'"><img src="images/'.$ecopaquetes2.'.jpg" class="rollover"></a></td></tr></table></td>
<td></td>
<td width="20"></td>
<td width="100"></td></tr>';

}else{
foreach( $valor as $key => $value ) { 
if($menu==$value){
$registros = 10;

if (!$pagina) { 
    $inicio = 0; 
    $pagina = 1; 
} 
else { 
    $inicio = ($pagina - 1) * $registros; 
} 

$ban_menu_s='<h4>Chilaquiles deliciosamente crujientes:</h4>
Acompañados con frijoles refritos, crema y verdura.
<h2>¡25 opciones!</h2>';
$ban_menu_i='<h2>Sugiérenos una preparación diferente, ¡¡y le ponemos tu nombre !!</h2><h6>NOTA: Podrías decidirte a agregarles huevo, bistec o pollo.';

	$resultados = mysql_query("SELECT id FROM cafeco_menu_t WHERE categoria = $key");
	$total_registros = mysql_num_rows($resultados); 
	$resultados = mysql_query("SELECT * FROM cafeco_menu_t WHERE categoria = $key ORDER BY id ASC LIMIT $inicio, $registros");	
	$total_paginas = ceil($total_registros / $registros);

	if($total_registros) {
echo '<td><table border="0" width="500"><tr></td><h1>'.$menu.'</h1><a href="'.$_SERVER["HTTP_REFERER"].'"><p align="right"><small>volver</small></p></a></td></tr>';
if($menu=='Chilaquiles'){echo '<tr><td colspan="2" align="center">'.$ban_menu_s.'</td></tr>';};
		while($row=mysql_fetch_array($resultados)) {
echo '<tr><td ><!--<img src="images/'.$row['imagen'].'.jpg" width="80">--></td>
<td align="justify"><a href="platillo.php?menu='.$row['titulo'].'">'.$row['titulo'].'</a>'."\n".$row['subtitulo'].'</td></tr>';	
		}
if($menu=='Chilaquiles'){echo '<tr><td colspan="2" align="center">'.$ban_menu_i.'</td></tr>';};
echo '<tr><td colspan="3"><br>';
	} else {
		echo "(sin resultados)";
	}
	
	mysql_free_result($resultados);				
	
	if($total_registros) {
		
		echo "<center>";
		
		if(($pagina - 1) > 0) {
			echo '<a href="'.$_SERVER["PHP_SELF"].'?menu='.$menu.'&pagina='.($pagina-1).'">< Anterior</a>';
		}
		
		for ($i=1; $i<=$total_paginas; $i++){ 
			if ($pagina == $i) 
				echo "<b>".$pagina."</b> "; 
			else
				echo '<a href="'.$_SERVER["PHP_SELF"].'?menu='.$menu.'&pagina='.$i.'">'."\n".$i."\n".'</a> '; 
		}
	  
		if(($pagina + 1)<=$total_paginas) {
			echo '<a href="'.$_SERVER["PHP_SELF"].'?menu='.$menu.'&pagina='.($pagina+1).'">Siguiente ></a>';
		}
		
		echo "</center>";
		
	}
	?>
<?php 
echo '</td></tr>';
echo '</table></td></tr>';
echo '</td></tr></table>';
}//cierra el if(menu==$value)
}//cierra el foreach
}//ciera el else ($menu==1)
?>
</table>
</div>
<?php include("style/footer.html"); ?>