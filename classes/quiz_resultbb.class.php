<?php
session_start();
class quiz_result{
	private $quiz='';
	private $itera='';
	private $titulo='';
	private $cuerpo='';	
	private $itera_desde=2;
	private $itera_hasta=4;	
	public function __construct($q,$i){
		$this->quiz=$q;
		$this->itera=$i;
	}
	public function qu_Re(){
		include_once("../classes/mysql.php");
		$mysql=new MySQL();	
		if(isset($_POST["rubro"])){
			$rubro=$_POST["rubro"];
		}
		
		if($this->itera==1){
			$desde=$this->itera_desde;
			$hasta=$this->itera_hasta;
		}else{
			$fac=(($this->itera-1)*4);
			$desde=$this->itera_desde+($fac);
			$hasta=$this->itera_hasta+($fac);
			
		}

		$sql=$mysql->consulta("SELECT id,quiz,answ,fecha FROM quiz_resu");
		$cuenta=$mysql->num_rows($sql);
		$sql2=$mysql->consulta("SELECT quiz_answ.id FROM quiz_answ INNER JOIN quiz_ques ON quiz_answ.ques = quiz_ques.id WHERE quiz_ques.quiz = ".$this->quiz);
		$answ_nu=$mysql->num_rows($sql2);

		for($a=1;$a<=$answ_nu;$a++){
			$posis[]=$a;
		}
		while($row=$mysql->fetch_array($sql)){
			$quiz=$row[1];
			$tam=(strlen($row[2])/4);
	
			for($e=1;$e<=1;$e++){
				$despues=$row[2];
				$result1[$e] = substr($despues,$desde,1);
				$arr[]=array($posis[$e]=>$result1[$e]);		
			}
		}
		$devuelve['flor']=$cuenta;
		$devuelve['trepida']=$arr;
		return $devuelve;	
	}
}
?>