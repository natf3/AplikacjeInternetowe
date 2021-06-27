<?php

class Database
{
	
	private $con;
	public function connect(){
		$this->con = new Mysqli("localhost", "root", "", "shopping_cart");
		return $this->con;
	}
}

?>