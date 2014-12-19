<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
$sql = $mysql->consulta("SELECT id,nombre,precio,imagen FROM catalogo_index2 ");
?>
<section>
	<table style="width:100%">
<?php
while($row = $mysql->fetch_array($sql)){
		$sql2 = $mysql->consulta("SELECT id,nombre,precio FROM catalogo_dimensiones WHERE vincula = ".$row[0]);
	?>
		<tr>
			<td>
				<table id="catalogo_consulta1">
					<tr>
						<td id="catalogo_consulta1-1" colspan="2">
							<strong>
<?php		echo $row[0].'.-'.$row[1]; ?>
							</strong>
						</td>
					</tr>
						<tr>
							<td id="catalogo_consulta2-1" style="width:40%">
<?php
		if($row[3]=='sin_titulo'){
?>
							<div id="sin_titulo">Sin imagen disponible</div>
<?php	}else{
?>
								<img src="images/catalogo/<?php echo $row[3]?>.jpg">
<?php } ?>
							</td>
								<td id="catalogo_consulta2-2">
<?php
		while($row2 = $mysql->fetch_array($sql2)){
			echo $row2['nombre'].', precio: $'.$row2['precio'].'<br>';
			echo '<div class="hr"><hr/></div>';
		}
		if($row['precio']>0.00){
			echo 'precio: $'.$row['precio'];
			echo '<div class="hr"><hr/></div>';
			
		}
?>
								</td>
						</tr>
				</table><br>
			</td>
		</tr>
<?php
}
?>
	</table>
</section>