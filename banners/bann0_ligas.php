<table id="main_ligas">
	<tr>
		<td id="main_ligas1">
<?php
include_once("classes/conex.php");
$link=Conectarse();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?><div id="ligas">
<?php
		$sql=mysql_query("SELECT id,nombre,ruta,contenido,imagen FROM ligas_index WHERE visible = 1 ORDER BY id ASC",$link);
			echo '<table id="bg_ligas">';
		while($row=mysql_fetch_array($sql)){
			echo '<tr><td rowspan="2" id="bg_ligas1">';
			echo '<a href="'.$row['ruta'].'" target="_blank">';
			echo '<img src="images/ligas/'.$row["imagen"].'" class="rollover">';
			echo '</a>';
			echo '<td id="bg_ligas2">'.$row["nombre"].'</td></tr>';
			echo '<tr><td id="bg_ligas3">'.$row['contenido'].'</td></tr>';
			echo '<tr><td id="bg_ligas4"></td></tr>';
		}
			echo '</table>';
?>
		</div>	</td>
		</tr>
</table>