	<script language="javascript">
		function valida_envia(){
		    if(document.fvalida.limp.value.length!=0){
		        alert("Me temo que no eres humano. No puedo mandar tu mensaje.")
		        document.fvalida.limp.focus()
		        return 0;
		    }
		    alert("El mensaje se enviará, enseguida.");
		    document.fvalida.submit();
		}
	</script>

	<div class="bann" align="center">
		<table border="0">
			<tr>
				<td align="center">
					<br><big>Envíenos un mail</big>
				</td>
			</tr>
				<tr>
					<td align="center">
	   					<form action="admin/gadgets/mensajes/exe_mail.php" method="post" name="fvalida">
						Título:<br>
							<input type="text" name="titulo" style="width:65%"><br>
							<input type="hidden" name="agregar" value="7">
<?php 					if($_SESSION['estado']=='Autenticado'){
							echo '<br>Dirigido a: <select name="dirigido">';
							$sql=mysql_query("SELECT id,user FROM user ORDER BY id DESC",$link);
							while ($row=mysql_fetch_array($sql)){
								echo '<option value="'.$row['user'].'">'."\n".$row['user']."</a>   ";
							}
							echo '</select><br><br>';
						}else{
							echo '<input type="hidden" name="dirigido" value="general">';
						}
?>
						Mensaje:<br>
						<textarea name="mensaje"  style="width:65% " rows="7"  ></textarea><br>
<?php 						if($_SESSION['estado']=='Autenticado'){
								$usuario=$_SESSION['user'];
								echo '<br>De: '. $_SESSION['user'].'<input type="hidden" name="remite" value="'.$usuario.'"><br><br>';
							}else{
								echo 'Nombre: <br><input type="text" name="remite" style="width:65%"><br>';
							}
?>
						correo-e:<br>
							<input type="text" name="correo" style="width:65%"><br><br>
							Deje este espacio sin texto<br><input type="text" name="limp" style="width:50%"><br>
							<br><input type="button" onClick="valida_envia()" value="enviar">
						</form><br>
					</td>
				</tr>
		</table>
	</div>