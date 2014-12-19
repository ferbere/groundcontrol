<?php
include("style/header.html");
//include("conex.php");
$link=Conectarse();
if(isset($_GET['menu'])){
$menu=$_GET['menu'];
}
$grupo_array=array(0=>"Ninguno",1=>"Entradas",2=>"Ensaladas",3=>"Platos fuertes",4=>"Eco-paquetes",5=>"Postres",6=>"Café",7=>"Preparados frutas/ vegetales",8=>"Barra",9=>"Cervezas",10=>"Vinos");
?>
<div align="center"><table width="550"  border="0"><tr><td align="center">
<?php
$sql=mysql_query("SELECT * FROM cafeco_menu_t WHERE titulo = '$menu' ",$link);
echo '<h1>'.$menu.'</h1><a href="'.$_SERVER["HTTP_REFERER"].'"><p align="right"><small>volver</small></p></a></td></tr>';
while($row=mysql_fetch_array($sql)) {
echo '<tr><td align="justify">'.$row['subtitulo']."\n".$row['descripcion'].'</td></tr>';	
		}
mysql_free_result($sql);
//mysql_close($db);

?>
</table>
</div>
<?php include("style/footer.html"); ?>