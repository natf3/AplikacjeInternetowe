<?php
class Product{

    private $con;

	function __construct()
	{
		include_once("Database.php");
		$db = new Database();
		$this->con = $db->connect();
    }
    


	public function create($name, $price, $des){
			$q = $this->con->query("INSERT INTO products(product_name, price, description) VALUES ('$name','$price','$des')");
		
			}

		}

