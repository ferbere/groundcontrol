<?php
session_start();

$link=Conectarse();
if(isset($_GET['created'])){
	$created=$_GET['created'];
}
if(empty($created)){
?>
<div id="form-main">
<br><br><a href="index.php">regresar</a><br><br>
<form method="post" action="sesion.php?ruta=ip_account.php">
<div id="maincontent-tit">
	Create Account<br><br>
</div>
	<div id="maincontent-body">
		<div align="left">
			<div style="float: left">
				User:<br>
				<input type="text" name="user">
			</div>
				<div style="float: left; position: relative; left: 50px">
				Password:<br>
				<input type="password" name="passwd">
				</div>
		</div>
			<div style="clear: both">
				<div>
					Full Name:<br>
					<input type="text" name="name" size="100"><br>
					Address:<br>
					<input type="text" name="address" size="100"><br>
					City:<br>
					<input type="text" name="city" size="100"><br>
					State:<br>
					<input type="text" name="state" size="100"><br>
					Country:<br>
					<input type="text" name="country" size="100"><br>
					ZIP:<br>
					<input type="text" name="zip" size="100"><br>

				</div>
					<div style="float: left">
						e-mail:<br>
						<input type="text" name="mail" size="25"><br>
					</div>
						<div style="float: left; position: relative; left: 50px">
							Phone:<br>
							<input type="text" name="phone" size="15"><br><br>
						</div>
							<div style="float: left; position: relative; left: 120px">
							</div>
				</div>
			<div style="clear: both">
				<input type="submit" onClick="MM_popupMsg('Guardar');return false" value="enviar">
				</form>
			</div>
	</div>
</div>
<?php
}else{
	header("Location:sesion.php?created=1");
}

?>