<?php
include_once "config/database.php";
include_once "objects/order_item.php";
 
$database = new Database();
$db = $database->getConnection();
 
$order_item = new OrderItem($db);
 
$order_item->user_id=1; 
$order_item->deleteByUser();
 
$page_title="";

include_once 'layout_head.php';
 
echo "<div class='col-md-12'>";
    echo "<div class='alert alert-success'>";
        echo "<strong>Twój koszyk został opróżniony";
    echo "</div>";
echo "</div>";
 
include_once 'layout_foot.php';