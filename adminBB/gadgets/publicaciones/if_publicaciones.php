<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){

	include("../library/tinymce.php");
	include("../library/confirm.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(empty($capturado)){
?>
		<div id="form-main">
			<form method="post" action="gadgets/publicaciones/ip_publicaciones.php">
			<div id="maincontent-tit">
				Art�culo nuevo
			</div>
			<div id="maincontent-body">
				<div>
	                    T�tulo:<br>
					<input type="text" name="titulo" size="80%"><br>
	                    G�nero:<br>
					<input type="text" name="genero" size="50%"><br>
	                    Editor:<br>
					<input type="text" name="editor" size="80%"><br>
						Imagen:<br>
					<input type="text" name="imagen" size="30">.jpg<br>
						Extensi�n:<br>
					<input type="text" name="ext"><br>
						A�o:<br>
					<input type="text" name="year"><br>
						Contenido:<br>
					<textarea name="contenido" rows=19 cols=80 width:300px height:40px></textarea><br>
						Publicado:<br>
						S� <input type="radio" name="publicado" value="1" size="30">
						No <input type="radio" name="publicado" value="2" size="30" checked><br><br>
				</div>
					<div>
						<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
						</form>
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