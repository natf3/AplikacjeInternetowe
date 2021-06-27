<?php

include 'images.php';
include 'classes/Database.php';
include 'classes/Image.php';

  
$database = new Database();
$db = $database->connect();
 

$name=($_POST["product_name"]);
$img= ($_POST["image_name"]);

    if (!empty($name) && !empty($img)) {
        $c = new Image();
		$result = $c->create($name, $img);
    }

?>