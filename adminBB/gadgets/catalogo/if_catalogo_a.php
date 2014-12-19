<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){
	include_once('../classes/conex.php');
	$link=Conectarse();
	include("../library/tinymce.php");
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
	if(empty($capturado)){
		$sql= mysql_query("SELECT * FROM catalogo_index WHERE id = '$rubro' ",$link);
        while ($row = mysql_fetch_array($sql)){
?>
	<div id="form-main">
		<form method="post" action="gadgets/catalogo/ip_catalogo_a.php">
		<input type="hidden" name="rubro" value="<?php echo $rubro ?>"><br><br>
		<div id="maincontent-tit">
			Modificar catálogo<br><br>
		</div>
			<div id="maincontent-body">
				<table>
					<tr>
						<td rowspan="2">
							<img src="../images/catalogo/<?php echo $row['imagen']; ?>.jpg" width="150px">
						</td>
						<td></td>
					<tr>
						<td></td><td>
                        Nombre:<br>
					<input type="text" name="nombre" size="40%" value="<?php echo $row['nombre'] ?>"><br><br>
                    	Subnombre:<br>
					<input type="text" name="subnombre" size="60%" value="<?php echo $row['subnombre'] ?>"><br><br>
<?php
		if($row['visible']==1){
			$vis_si='checked';
			$vis_no='nain';
		}elseif($row['visible']==0){
			$vis_si='nain';
			$vis_no='checked';
			
		}
?>
						Visible:
					<input type="radio" name="visible" value="1" <?php echo $vis_si ?>>Sí
					<input type="radio" name="visible" value="0" <?php echo $vis_no ?>>No<br><br>
					Categoría:<br><br><select name="categoria">
					<?php
					$sqlCat=mysql_query("SELECT id,nombre FROM catalogo_categoria ORDER BY id ASC ",$link);
					$sqlCat2=mysql_query("SELECT MAX(id) as max FROM catalogo_categoria ",$link);
					$rowCat2=mysql_fetch_array($sqlCat2);
					while($rowCat=mysql_fetch_array($sqlCat)){
							if($row['categoria']!=$rowCat['id']){
								$hig= 'nain';
								}else{$hig="selected";}
								echo '<option value="'.$rowCat['id'].'"'.$hig.'>'.$rowCat['nombre'].'</option>';
							}
					echo '</select>';
?><br><br>
		</td>
	<tr>
</table><div>		
                        Descripción:<br>
		<textarea name="descripcion" rows=10 cols=80 ><?php echo $row['descripcion'] ?></textarea><br><br>
                        Imagen:<br>
		<input type="text" name="imagen" size="40%" value="<?php echo $row['imagen']; ?>">
						<select name="ext">
<?php
					$sql_ext=mysql_query("SELECT id,nombre FROM catalogo_ext ORDER BY id ASC ",$link);
					$sql_ext2=mysql_query("SELECT MAX(id) as max FROM catalogo_ext ",$link);
					$row_ext2=mysql_fetch_array($sql_ext2);
					while($row_ext=mysql_fetch_array($sql_ext)){
						echo $row_ext2['id'];
							if($row['ext']!=$row_ext['id']){
								$hig= 'nain';
							}else{
								$hig="selected";
							}
								echo '<option value="'.$row_ext['id'].'"'.$hig.'>'.$row_ext['nombre'].'</option>';
							}
					echo '</select>';
?><br><br>
					</select><br><br>
                    Precio Temporada Baja:<br>$<input type="text" name="precio_baja" size="30%" value="<?php echo $row['precio_baja'] ?>"><br><br>                        
                    Precio Temporada Alta:<br>$<input type="text" name="precio_alta" size="30%" value="<?php echo $row['precio_alta'] ?>"><br><br>                        
                    Precio Temporada Altísima:<br>$<input type="text" name="precio_altisima" size="30%" value="<?php echo $row['precio_altisima'] ?>"><br><br>			                 
                	Precio Temporada Alta 2da:<br>$<input type="text" name="precio_alta2" size="30%" value="<?php echo $row['precio_alta2'] ?>"><br><br>
					</div>
<?php
            }
?>
                            	<div>
                                    <input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
			</form>
                                </div>
			</div>
		</div>
<?php
    }else{
	    echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
    }
}else{
echo "Usted no tiene acceso a esta seccción";
}
?>