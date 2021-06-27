<?php
include 'config/database.php';

include_once "objects/product.php";
include_once "objects/product_image.php";
include_once "objects/order_item.php";
 

$database = new Database();
$db = $database->getConnection();
 

$product = new Product($db);
$product_image = new ProductImage($db);
$order_item = new OrderItem($db);
 
$page_title="Informacje";
 

include 'layout_head.php';

echo '<div class="cart-row">
Jeśli masz jakieś pytania, skontaktuj się z nami, na pewno odpowiemy! <br><br><br>
<div class="col-md-4">
Drogeria internetowa <br>
Różana 73 <br>
20-712 Lublin <br>

 </div>
 <div class="col-md-8 justify-content-center">E-mail : drogeria@internetowa.pl <br>
 Tel: 123456789
 </div>
</div>';