<?php

header('Content-Type: application/json');


include("classes/Database.php");
$db = new Database();
$con = $db->connect();

$query = sprintf("SELECT product_id, quantity FROM sold_items ORDER BY quantity");

$result = $con->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

$result->close();

$con->close();


print json_encode($data);