<?php
$product_id = isset($_GET['id']) ? $_GET['id'] : "";
$quantity = isset($_GET['quantity']) ? $_GET['quantity'] : 1;
 
$quantity=$quantity<=0 ? 1 : $quantity;
 
include 'config/database.php';
 
include_once "objects/order_item.php";

$database = new Database();
$db = $database->getConnection();
 
$order_item = new OrderItem($db);


$order_item->user_id=1;
$order_item->product_id=$product_id;
$order_item->quantity=$quantity;
 
if($order_item->exists()){
    header("Location: cart.php?action=exists");
}
 
else{
   
    if($order_item->create()){
        header("Location: product.php?id={$product_id}&action=added");
    }else{
        header("Location: product.php?id={$product_id}&action=unable_to_add");
    }
}
?> 