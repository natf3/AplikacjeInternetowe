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
 
$page_title="Koszyk";
 
include 'layout_head.php'; 
 
$action = isset($_GET['action']) ? $_GET['action'] : "";
 
echo "<div class='col-md-12'>";
    if($action=='removed'){
        echo "<div class='alert alert-info'>";
            echo "Produkt został usunięty z koszyka!";
        echo "</div>";
    }
 
    else if($action=='quantity_updated'){
        echo "<div class='alert alert-info'>";
            echo "Ilość została zmieniona.";
        echo "</div>";
    }
 
    else if($action=='exists'){
        echo "<div class='alert alert-info'>";
            echo "Produkt już znajduje się w koszyku";
        echo "</div>";
    }
    else if($action=='updated'){
        echo "<div class='alert alert-info'>";
            echo "Ilość została zmieniona";
        echo "</div>";
    }
 
    else if($action=='unable_to_update'){
        echo "<div class='alert alert-danger'>";
            echo "Nie udało się zmienić ilości";
        echo "</div>";
    }
echo "</div>";
 
if($cart_count>0){
 
    $order_item->user_id="1";
    $stmt=$order_item->read();
 
    $total=0;
    $item_count=0;
 
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        extract($row);
 
        $sub_total=$price*$quantity;
 
        echo "<div class='cart-row'>";
            echo "<div class='col-md-1'>";
    
        $product_image->product_id=$product_id;
        $stmt_product_image=$product_image->readFirst();

        while ($row_product_image = $stmt_product_image->fetch(PDO::FETCH_ASSOC)){
            echo "<div class='m-b-10px'>";
                echo "<img src='uploads/images/{$row_product_image['name']}' class='w-100-pct'/>";
            echo "</div>";
        }
        echo "</div>";
        
            echo "<div class='col-md-7'>";
               
                echo "<div class='product-name m-b-10px'>";
                    echo "<h4>{$product_name}</h4>";
                echo "</div>";
 
                echo "<form class='update-quantity-form'>";
                    echo "<div class='product-id' style='display:none;'>{$product_id}</div>";
                    echo "<div class='input-group'>";
                        echo "<input type='number' name='quantity' value='{$quantity}' class='form-control cart-quantity' min='1' />";
                            echo "<span class='input-group-btn'>";
                                echo "<button class='btn btn-default update-quantity' type='submit'>Zmień</button>";
                            echo "</span>";
                    echo "</div>";
                echo "</form>";
 
                echo "<a href='remove_from_cart.php?id={$product_id}' class='btn btn-default'>";
                    echo "Usuń";
                echo "</a>";
            echo "</div>";
 
            echo "<div class='col-md-2'>";
                echo "<h4>" . number_format($sub_total, 2, '.', ',') . " zł</h4>";
            echo "</div>";
        echo "</div>";
 
        $item_count += $quantity;
        $total+=$sub_total;
    }
 
    echo "<div class='col-md-8'>";    
    echo "<div class='cart-row'>";
    echo "<a href='delete_from_cart.php' class='btn btn-light m-b-10px'>";
                echo "<span class='glyphicon glyphicon-remove'></span> Wyczyść koszyk";
            echo "</a>";
        echo "</div>";
        echo "</div>";
    echo "<div class='col-md-4'>";
            echo "<h4 class='m-b-10px'>Ilość produktów: {$item_count}</h4>";
            echo "<h4>" . number_format($total, 2, '.', ',') . " zł </h4>";
            echo "<a href='form.php' class='btn btn-light m-b-10px'>";
                echo "<span class='glyphicon glyphicon-check'></span> Zamów";
            echo "</a>";
        echo "</div>";
    echo "</div>";
 
}
 
else{
    echo "<div class='col-md-12'>";
        echo "<div class='alert alert-danger'>";
            echo "Twój koszyk jest pusty.";
        echo "</div>";
    echo "</div>";
}
 
include 'layout_foot.php';
?>