<?php
include_once("../classes/mysql.php");
include_once("../admin/classes/phpmailer/class.phpmailer.php");
$mysql = new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql = $mysql->consulta("SELECT titulo,mensaje,grupo FROM mails_massive_mensajes WHERE enviado = 0 AND id = '$rubro' ");
$row = $mysql->fetch_array($sql);
	$titulo = $row['titulo'];
	$mensaje = $row['mensaje'];
	$grupo = $row['grupo'];
	if(isset($_GET['grupo'])){
		$grupo=$_GET['grupo'];
	}
	if(empty($grupo)){
		$grupo=3;
	}
	if($grupo==3){
		$grup ='';
	}else{
		$grup = " AND grupo = ".$grupo;
	}
	
	    $mail = new PHPMailer();
	    $mail->IsSMTP();
	    $mail->Host = "mail.diputadospanjalisco.net";
	    $mail->Username = "boletinesmediospan@diputadospanjalisco.net";
	    $mail->Password = "2provisionaL";
	    $mail->SMTPAuth = true;
	    $mail->CharSet = "UTF-8";
	    $mail->From = "boletinesmediospan@diputadospanjalisco.net";
	    $mail->FromName = "diputadospanjalisco.net";
	    $mail->IsHTML(true);
	    $mail->Subject = $titulo;
	    $mail->AltBody = $titulo."\n\n".$mensaje;
	    /* Destinatarios */
	    $mail->AddAddress('boletinesmediospan@diputadospanjalisco.net','Lista de correo de diputadospanjalisco.net');

$mysql2 = new MySQL();
$sql2 = $mysql2->consulta("SELECT nombre,email FROM mails_massive_directorio WHERE email != '' ".$grup);
while($row2 = $mysql2->fetch_array($sql2)){
	$mail->AddBCC($row2['email'],$row2['nombre']);
}
	$mail->Body = '<big>'.$titulo.'</big>';
	$mail->Body .= $mensaje;
	$mail->Body .= '<br><br><br>';
	$mail->Body .= '
		<img src="http://diputadospanjalisco.net/congreso/style/images/logos_mail1.png"><br><br>
		<img src="http://diputadospanjalisco.net/congreso/style/images/logos_mail2.png"><br><br><br>
	<i>Grupo Parlamentario PAN</i><br>';
	$mail->Body .= '<small><b>boletinesmediospan@diputadospanjalisco.net<br>
	www.diputadospanjalisco.net</b></small>';
    if(!$mail->Send()) {
        echo "El mensaje no pudo ser enviado.";
        echo "Error: " . $mail->ErrorInfo;
    } else {
        echo "El mensaje ha sido enviado.";
    }
	echo '<script>window.location.href="../admin/mensajes.php?ruta=enviado.php&rubro='.$rubro.'&grupo='.$grupo.'"</script>';
	exit();
?>