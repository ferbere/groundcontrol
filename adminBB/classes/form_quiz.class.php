<?php
class form{
	public $quiz='';
	public $fetch='';	
	public $rubro='';
	public function __construct($ft,$rb){
		include_once("../classes/mysql.php");
		$this->mysql=new MySQL();
		$this->fetch=$ft;
		$this->rubro=$rb;
	}
	public function foRm_campo(){
		$sql=$this->mysql->consulta("SELECT id,nombre FROM quiz_index WHERE id = 1");
		while($row=$this->mysql->fetch_array($sql)){
			$this->quiz	= $row[1];
		}
		return $this->quiz;
	}
}



?>