<?php

include 'products.php';
include 'classes/Database.php';
include 'classes/Product.php';

  
$database = new Database();
$db = $database->connect();
 

$name=($_POST["product_name"]);
$price= ($_POST["product_price"]);
$des=($_POST["product_desc"]);

    if (!empty($name) && !empty($des) && !empty($price)) {
        $c = new Product();
		$result = $c->create($name, $price, $des);
    }




?>