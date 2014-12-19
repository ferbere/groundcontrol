<?php
session_start();
class bucleSub{
	public $quiz='';
	public $quiz2='';
	public $id_1q='';
	public $id_1q2='';
	public $itera='';
	public $referencia='';
	private $bs='';
	public $mysql='';
	private $p='';
	private $r='';
	public $tot_preg='';
	private $tot_preg2='';
	public function __construct($qq,$it,$t,$id){//("#Quiz","iteracion","Total preguntas del quiz")
		$this->quiz=$qq;
		$this->itera=$it;
		$this->id_1q=$id;
		$this->mysql=new MySQL();
		$this->tot_preg2=$t;
	}
	public function qQ(){//Devuelve el total de preguntas del Quiz
		$sql1=$this->mysql->consulta("SELECT quiz_index.id,quiz_ques.id FROM quiz_index INNER JOIN quiz_ques ON quiz_index.id = quiz_ques.quiz WHERE quiz_index.visible = 1");
		$this->tot_preg=$this->mysql->num_rows($sql1);
		$row1=$this->mysql->fetch_array($sql1);
		$this->quiz2=$row1[0];
		$this->id_1q2=$row1[1];
		$devuelve1[0]=$this->tot_preg;
		$devuelve1[1]=$this->quiz2;
		$devuelve1[2]=$this->id_1q2;
		return $devuelve1;
	}
/*
	public function qu_Re(){
		$sql3=$this->mysql->consulta("SELECT answ FROM quiz_resu WHERE quiz = '$this->quiz' ");
		$answ_nu=$this->mysql->num_rows($sql3);

		$sql4=$this->mysql->consulta("SELECT id FROM quiz_ques WHERE quiz = ".$this->quiz);
		$ques_nu=$this->mysql->num_rows($sql4);

		while($row3=$this->mysql->fetch_array($sql3)){
			for($e=1;$e<=1;$e++){
				$result1[$e] = (explode(" ",$row3[0]));
				$arr[]=$result1[$e];
			}
		}
		$this->devuelve2[0]=$ques_nu;//número de preguntas por quiz
		$this->devuelve2[1]=$answ_nu; //número de respuestas del público
		$this->devuelve2[2]=$arr;    //resultados metidos en un array compuesto
		return $this->devuelve2;
	}*/
	public function bS(){//Estructura el formulario de Entrevista
/*empieza*/
$sql3=$this->mysql->consulta("SELECT answ FROM quiz_resu WHERE quiz = '$this->quiz' ");
		$answ_nu=$this->mysql->num_rows($sql3);

		$sql4=$this->mysql->consulta("SELECT id FROM quiz_ques WHERE quiz = ".$this->quiz);
		$ques_nu=$this->mysql->num_rows($sql4);

		while($row3=$this->mysql->fetch_array($sql3)){
			for($e=1;$e<=1;$e++){
				$result1[$e] = (explode(" ",$row3[0]));
				$arr[]=$result1[$e];
			}
		}

/*termina*/


		$sql2=$this->mysql->consulta("SELECT quiz_index.nombre,quiz_ques.id as ques_id,quiz_ques.pregunta,quiz_answ.id as answ_id,quiz_answ.respuesta FROM quiz_index INNER JOIN quiz_ques ON quiz_index.id = quiz_ques.quiz INNER JOIN quiz_answ ON quiz_ques.id = quiz_answ.ques WHERE quiz_index.id = '$this->quiz' ");
			while($row2=$this->mysql->fetch_array($sql2)){
				$nombre		= $row2[0];
				$pregunta	= $row2[1];
				$titulo 	= $row2[2];
				$respuesta  = $row2[3];
				$contador	= 1;
//				$flap[$respuesta][]=$arr;
			    $ques[$titulo][] = '<td>'.$row2[4].$arr[0][3].'</td>';
				$contador	= $contador+1;
			}
				$as= '<table border="1">';
				$as.= '<tr><td><h1>'.$nombre.'</h1></td></tr>';
				$c=1;
			    foreach ($ques as $titulo => $desglose){
				$as.= '<tr><td><h2>'.$c.'.- '.$titulo.'</h2></td></tr>';
			    	foreach ($desglose as $respuestas){
				$as.= '<tr>'.$respuestas.'</tr>';
			    	}	
				$c=$c+1;
			    }
				$as.= '</table>';
				$this->bs[1]=$as;
				return $this->bs;
	}
}
?>