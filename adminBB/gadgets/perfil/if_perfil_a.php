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
		$sql= mysql_query("SELECT id,nombre,descripcion,imagen,distrito,categoria,visible,ext,email,sala,telefonos,enlace,orden FROM perfil_index WHERE id = '$rubro' ",$link);
        while ($row = mysql_fetch_array($sql)){
			$id				= $row[0];
			$nombre			= $row[1];
			$descripcion	= $row[2];
			$imagen			= $row[3];
			$distrito		= $row[4];
			$categoria		= $row[5];
			$visible		= $row[6];
			$ext			= $row[7];
			$email			= $row[8];
			$sala			= $row[9];
			$telefonos		= $row[10];
			$enlace			= $row[11];
			$orden			= $row[12];
		}
?>
	<div id="form-main">
		<form method="post" action="gadgets/perfil/ip_perfil_a.php">
		<input type="hidden" name="rubro" value="<?php echo $rubro ?>"><br><br>
		<div id="maincontent-tit">
			Modificar perfil<br><br>
		</div>
			<div id="maincontent-body">
				<table>
					<tr>
						<td rowspan="2">
							<img src="../images/perfil/<?php echo $imagen; ?>.jpg" width="150px">
						</td>
						<td></td>
					<tr>
						<td></td><td>
                        Nombre:<br>
					<input type="text" name="nombre" size="40%" value="<?php echo $nombre ?>"><br><br>
                    	distrito:<br>
					<input type="text" name="distrito" size="60%" value="<?php echo $distrito ?>"><br><br>
<?php
		if($visible==1){
			$vis_si='checked';
			$vis_no='nain';
		}elseif($visible==0){
			$vis_si='nain';
			$vis_no='checked';
			
		}
?>
						Visible:
					<input type="radio" name="visible" value="1" <?php echo $vis_si ?>>S�
					<input type="radio" name="visible" value="0" <?php echo $vis_no ?>>No<br><br>
					Categor�a:<br><br><select name="categoria">
					<?php
					$sqlCat=mysql_query("SELECT id,nombre FROM perfil_categoria ORDER BY id ASC ",$link);
					while($rowCat=mysql_fetch_array($sqlCat)){
						if($categoria!=$rowCat['id']){
							$hig= 'nain';
						}else{
							$hig="selected";
						}
							echo '<option value="'.$rowCat['id'].'"'.$hig.'>'.$rowCat['nombre'].'</option>';
							}
					echo '</select>';
?><br><br>
		</td>
	<tr>
</table><div>		
                        Descripci�n:<br>
		<textarea name="descripcion" rows=10 cols=80 ><?php echo $descripcion ?></textarea><br><br>
                        Imagen:<br>
		<input type="text" name="imagen" size="40%" value="<?php echo $imagen; ?>">
						<select name="ext">
<?php
					$sql_ext=mysql_query("SELECT id,nombre FROM general_ext ORDER BY id ASC ",$link);

					while($row_ext=mysql_fetch_array($sql_ext)){
						if($ext!=$row_ext['id']){
							$hig= 'nain';
						}else{
							$hig="selected";
						}
						echo '<option value="'.$row_ext['id'].'"'.$hig.'>'.$row_ext['nombre'].'</option>';
					}
					echo '</select>';
?><br><br>
					</select><br><br>
                    e-mail:<br><input type="text" name="email" size="50%" value="<?php echo $email ?>"><br><br>                        
                    Sala:<br><input type="text" name="sala" size="30%" value="<?php echo $sala ?>"><br><br>                        
                    Tel�fonos:<br><input type="text" name="telefonos" size="100%" value="<?php echo $telefonos ?>"><br><br>			                 
                	Enlace:<br><textarea name="enlace" rows="20" cols="80" ><?php echo $enlace ?></textarea><br><br>
                    Orden:<br><input type="number" name="orden" value="<?php echo $orden ?>"><br><br>			                 

					</div>
                            	<div>
                                    <input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
			</form>
                                </div>
			</div>
		</div>
<?php
    }else{
	    echo "El contenido ha sido capturado, debidamente. �Muy bien!";
    }
}else{
	echo "Usted no tiene acceso a esta seccci�n";
}
?>