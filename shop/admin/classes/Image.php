<?php
class Image{

    private $con;

	function __construct()
	{
		include_once("Database.php");
		$db = new Database();
		$this->con = $db->connect();
    }
    


	public function create($product_name, $name){
			$q = $this->con->query("INSERT INTO product_images (product_id, name) VALUES ((SELECT product_id FROM products WHERE product_name='$product_name'),'$name')");
		
			}

		}

