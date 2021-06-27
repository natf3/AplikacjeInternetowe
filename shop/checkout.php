<?php
include 'config/database.php';

include_once "objects/product.php";
include_once "objects/product_image.php";
include_once "objects/order_item.php";
include_once "objects/item.php";
 
session_start();

$database = new Database();
$db = $database->getConnection();
 

$product = new Product($db);
$product_image = new ProductImage($db);
$order_item = new OrderItem($db);
$order_item = new OrderItem($db);
$item=new Item($db);
 
$page_title="Podsumowanie";
 

include 'layout_head.php';

echo "<div class='row' style=font-size:20px;'>
 Twoje dane: <br>
 Imię:   " .$_SESSION['name']."  <br>
 Nazwisko: " .$_SESSION['last_name']."  <br>
 Email:   " .$_SESSION['email']."   <br>
 Telefon:  " .$_SESSION['phone']."  <br>
 Adres:  " .$_SESSION['address']."    <br>
 " .$_SESSION['code']."  " .$_SESSION['city']." 
<br><br>   
</div>";
echo "<div class='row'>
Numer konta: 12 3456 7890 0000 1234 1230 1234 <br>


Drogeria internetowa <br>
Różana 73 <br>
20-712 Lublin <br><br>

<B>Twoje zamówienie zostanie przekazane do realizacji w momencie zaksięgowania płatności </B><br><br>
</div>";
if($cart_count>0){
 
    $order_item->user_id="1";
    $stmt=$order_item->read();

 
 
    $total=0;
    $item_count=0;
 
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        extract($row);
 

        $sub_total=$price*$quantity;
 
        echo "<div class='cart-row'>";
            echo "<div class='col-md-8'>";
            echo "<div class='col-md-1'>";
    
        $product_image->product_id=$product_id;
        $stmt_product_image=$product_image->readFirst();

        while ($row_product_image = $stmt_product_image->fetch(PDO::FETCH_ASSOC)){
            echo "<div class='m-b-10px'>";
                echo "<img src='uploads/images/{$row_product_image['name']}' class='w-100-pct'/>";
            echo "</div>";
        }
        echo "</div>";
 
                echo "<div class='product-name m-b-10px'><h4>{$product_name}</h4></div>";
                echo $quantity>1 ? "<div>Ilość: {$quantity}</div>" : "<div>Ilość: {$quantity} </div>";
 
            echo "</div>";
 
            echo "<div class='col-md-4'>";
                echo "<h4>" . number_format($price, 2, '.', ',') . " zł</h4>";
            echo "</div>";
        echo "</div>";
 
        $item_count += $quantity;
        $total+=$sub_total;

        
        $item->product_id=$product_id;
        $item->quantity=$quantity;
        $item->create();
    }
 
    echo "<div class='col-md-12 text-align-center'>";
        echo "<div class='cart-row'>";
            if($item_count>1){
                echo "<h4 class='m-b-10px'> Ilość produktów: {$item_count}</h4>";
            }else{
                echo "<h4 class='m-b-10px'> 1 produkt </h4>";
            }
            echo "<h4>" . number_format($total, 2, '.', ',') . " zł</h4>";
 
            echo "<a href='place_order.php' class='btn btn-lg btn-light m-b-10px'>";
                echo "<span class='glyphicon glyphicon-shopping-cart'></span> Potwierdź";
            echo "</a>";
        echo "</div>";
    echo "</div>";
 
}
 
else{
    echo "<div class='col-md-12'>";
        echo "<div class='alert alert-danger'>";
            echo "No products found in your cart!";
        echo "</div>";
    echo "</div>";
}


 
include 'layout_foot.php';
