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

session_start();
 
$nname=isset($_POST['name'] ) ? $_POST['name'] : '';
$nlast=isset($_POST['lastName'] ) ? $_POST['lastName'] : '';
$nemail=isset($_POST['email'] ) ? $_POST['email'] : '';
$nphone=isset($_POST['telephone'] ) ? $_POST['telephone'] : '';
$naddress=isset($_POST['address'] ) ? $_POST['address'] : '';
$ncode=isset($_POST['code'] ) ? $_POST['code'] : '';
$ncity=isset($_POST['inputCity'] ) ? $_POST['inputCity'] : '';

$page_title="Dane do zamówienia";
 
include 'layout_head.php'; 
$action = isset($_GET['action']) ? $_GET['action'] : "";

echo "<div class='col-md-12'>";
    if($action=='unable'){
        echo "<div class='alert alert-info'>";
            echo "Sprawdź poprawność danych!";
          echo "</div>";}
    if($action=='empty'){
        echo "<div class='alert alert-info'>";
            echo "Wprowadź wszystkie dane!";        
        echo "</div>";
    }

 echo '<form action="add_customer.php" method="post">
 <div class="col-md-4">
 
 <div class="form-group">
  <label for="name" class="col-2 col-form-label">Imię:</label>
  <div class="col-10">
    <input class="form-control" type="text" value="'.$nname.'" name="name" id="name">
  </div></div>

  <div class="form-group">
    <div class="lastName">
  <label for="example-text-input" class="col-2 col-form-label">Nazwisko:</label>
  <div class="col-10">
    <input class="form-control" type="text" value="'.$nlast.'" name="lastName" id="lastName">
  </div>
</div></div>

    <div class="form-group">
   <label for="email">E-mail:</label>
    <input type="email" class="form-control" value="'.$nemail.'" name="email">
   </div>
   
   <div class="form-group">
  <label for="telephone" class="col-2 col-form-label">Telefon:</label>
  <div class="col-10">
    <input class="form-control" type="tel" value="'.$nphone.'" name="telephone">
    </div>
  </div>
</div>

<div class="col-md-1"></div>
<div class="col-md-7">
  <div class="form-group">
    <label for="address" class="col-2 col-form-label">Adres:</label>
    <input class="form-control" type="text" value="'.$naddress.'" name="address">
  </div>
<div class="form-group col-md-4">
  <label for="inputZip">Kod pocztowy</label>
  <input type="text" class="form-control" value="'.$ncode.'" name="code">
</div>
<div class="form-group col-md-8">
  <label for="inputCity">Miasto</label>
  <input type="text" class="form-control" value="'.$ncity.'" name="inputCity">
</div>
  <input type="submit" class="btn btn-default" value="Wyślij" />
</div>

  </div>
  </div>
  </form>'
;