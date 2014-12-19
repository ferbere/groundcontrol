<?php
session_start();
//if($_SESSION['user']!=''){
	
//}else{
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if($capturado==1){
		unset($_SESSION['carro']);
		echo 	'<div style="margin:0 auto; text-align:center">';
		echo 			'Thank you for your preference. <br>Your schedule has been setted and blocked for you. You should have received an email with the amount you should pay if decide to staying with us and our bank account information.<br> Then, You have two days to make the bank deposit.<br><br>';
		echo 'See you at Calappa';
		echo 	'</div>';
		
	}

//}
?>