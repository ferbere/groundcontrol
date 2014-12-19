<?php
session_start();
include("../library/tinymce.php");
include("../library/confirm.php");
if(($_SESSION['privilegioss']=="ferbere")||($_SESSION['privilegioss']=="admin")){
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
		$link=Conectarse();
		if(isset($_GET['rubro'])){
			$rubro=$_GET['rubro'];
		}
?>
<form method="post" action="gadgets/articulos/ip_articulos_a.php" enctype="multipart/form-data">
 	<input type="hidden" name="MAX_FILE_SIZE" value="1000000">	
	<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
<?php
		$sql= mysql_query("SELECT articulos_index.titulo,articulos_index.subtitulo,articulos_categoria.nombre,articulos_index.imagen,articulos_ediciones.nombre,articulos_index.contenido,articulos_index.publicado,perfil_index.nombre,articulos_index.fecha FROM articulos_index INNER JOIN articulos_categoria ON articulos_index.categoria = articulos_categoria.id INNER JOIN articulos_ediciones ON articulos_index.edicion = articulos_ediciones.id INNER JOIN perfil_index ON articulos_index.autor = perfil_index.id WHERE articulos_index.id = '$rubro' ",$link);
		while ($row = mysql_fetch_array($sql)){
			$titulo		=	$row[0];
			$subtitulo	=	$row[1];
			$categoria	=	$row[2];
			$imagen		=	$row[3];
			$ediciones	=	$row[4];
			$contenido	=	$row[5];
			$publicado	=	$row[6];
			$autor		=	$row[7];
			$fecha		= 	$row[8];
		}
		?>
			<div id="maincontent-tit">
				Editar artículo
			</div>
				<div id="maincontent-body">
					<div><br><br>
					<div style="text-align:center">
						<?php echo $imagen; ?>
						<img src="../images/opinion/<?php echo $imagen; ?>" >
					</div><br><br>
						Título:<br></h1>
						<input type="text" name="titulo" style="width:95%" value="<?php echo $titulo ?>" /><br><br>
						Subtítulo:<br>
						<input type="text" name="subtitulo" style="width:95%" value="<?php echo $subtitulo ?>"/>
						Fecha:<br>
						<input type="date" name="fecha" placeholder="YYYY-MM-DD" value="<?php echo $fecha; ?>">
					</div>
						<div style="width:500px; height: 50px">
							<div >
								Sección:<br>
								<select name="categoria">
<?php
$sqlCat=mysql_query("SELECT id,nombre FROM articulos_categoria ORDER BY id ASC ",$link);
while($rowCat=mysql_fetch_array($sqlCat)){
if($categoria!=$rowCat['nombre']){
	$cat= 'nain';
}else{
	$cat="selected";
}?>
	<option value="<?php echo $rowCat['id']; ?>"<?php echo $cat;?>>
		<?php echo $rowCat['nombre'];?>
	</option>
<?php }
?>
								</select>
							</div>
								<div style="position: relative; float:right">
<?php
		if(empty($imagen)){?>
			Imagen: 
			<input type="file" name="imagen" ><br><br><br>

<?php		}else{?>
			Imagen: <b><?php echo $imagen; ?></b><br>
			<a href="gadgets/articulos/borra_imagen.php?rubro=<?php echo $rubro; ?>">Borrar y cargar otra imagen</a><br><br><br>	
<?php } ?>			
								</div>
								</div>
								<div >
									Edición:<br>
									<select name="edicion">
<?php
$sqlEdi=mysql_query("SELECT id,nombre FROM articulos_ediciones ORDER BY id ASC ",$link);
while($rowEdi=mysql_fetch_array($sqlEdi)){
if($ediciones!=$rowEdi['nombre']){
	$edi= 'nain';
}else{
	$edi="selected";
}
	echo '<option value="'.$rowEdi['id'].'"'.$edi.'>'.$rowEdi['nombre'].'</option>';
}
?>
									</select><br><br>
									
									
							</div>
								<div>
									Contenido:<br>
									<textarea name="contenido" rows=19 cols=80 width:300px height:40px><?php echo $contenido ?></textarea>
								</div>
								<div style="float:left">
			<?php
			if($publicado==0){
			$publino="checked";
			$publisi="nain";
			}elseif($publicado==1){
			$publino="nain";
			$publisi="checked";
			}
			?>
									Publicado:<br>
									Sí <input type="radio" name="publicado" value="1" size="30" <?php echo $publisi ?>>
									No <input type="radio" name="publicado" value="0" size="30" <?php echo $publino ?>>
									</div>
									<div style="position:relative;left:150px">
									Autor:<br><select name="autor">
			<?php
			$sqlaut=mysql_query("SELECT id,nombre FROM perfil_index ORDER BY id ASC ",$link);
			while($rowaut=mysql_fetch_array($sqlaut)){
			if($autor!=$rowaut[1]){
				$aut= 'nain';
			}else{
				$aut="selected";
			}
				echo '<option value="'.$rowaut['id'].'"'.$aut.'>'.$rowaut['nombre'].'</option>';
			}
			?>
						</select>									</div>
									<div style="clear:both"></div>
									<div>
										<input type="submit"  value="enviar">
										</form>
									</div>
			</div>
<?php
	}else{
		echo "El contenido ha sido capturado, debidamente. ¡Muy bien!";
	}
}else{
echo "Usted no tiene acceso a esta sección";
}		
?>
