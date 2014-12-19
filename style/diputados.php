<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
?>
<table id="diputados">
	<tr>
<?php
$sql = $mysql->consulta("SELECT id,nombre FROM perfil_index WHERE id > 0 AND id < 14 ORDER BY nombre ASC");
while($row = $mysql->fetch_array($sql)){
	if($row[0]==4){
		$coord='<br><small><strong>(Coordinador)</strong></small>';
	}else{
		$coord='';
	}
?>
		<td valign="top">
			<a href="diputado.php?rubro=<?php echo $row[0] ?>">
				<?php echo $row[1].$coord;?>
			</a>
		</td>
<?php
}
?>
	</tr>
</table>