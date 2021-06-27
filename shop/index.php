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
 
$page_title="Drogeria internetowa";
 

include 'layout_head.php';

echo '<div class="cart-row">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
<ol class="carousel-indicators">
  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
  <li data-target="#myCarousel" data-slide-to="1"></li>
  <li data-target="#myCarousel" data-slide-to="2"></li>
</ol>
<!-- Wrapper for slides -->
<div class="carousel-inner">
  <div class="item active">
    <img src="images\makeup.jpg" alt="Kosmetyki" style="width:100%; height:400px;">
    <div class="carousel-caption">
      <h3></h3>
      <p></p>
    </div>
  </div>
  <div class="item">
    <img src="images\szminki.jpg" alt="Szminki" style="width:100%; height:400px;">
    <div class="carousel-caption">
      <h3></h3>
      <p></p>
    </div>
  </div>

  <div class="item">
    <img src="images\makeup2.jpg" alt="Cienie" style="width:100%; height:400px">
    <div class="carousel-caption">
      <h3></h3>
      <p></p>
    </div>
  </div>

</div>
<!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
  <span class="glyphicon glyphicon-chevron-left"></span>
  <span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right"></span>
  <span class="sr-only">Next</span>
</a>
</div>
</div> <br>
<div class="cart-row" > 
<div class="col-md-3">
            <div class="m-b-10px">
                 <img src="images/zdj1.jpg" class="w-100-pct"/>
             </div>
</div>

 <div class="col-md-9" style="font-size:30px; color:#D1B0AB; font-style: oblique; text-align:center;"> </br></br> Poznaj bogatą ofertę naszego sklepu
 </div></div></br>
 <div class="cart-row"> 
 <div class="col-md-9" style="font-size:30px; color:#8F6E69 ; font-style: oblique; text-align:center;"> </br> Odkryj oryginalne kosmetyki i akcesoria do makijażu
  </div>
 <div class="col-md-3 ">
 <div class="m-b-10px">
                 <img src="images/zdj2.jpg" class="w-100-pct"/>
             </div>
 </div>
</div>
<!--<img src="images/main1.jpg" class="img-fluid" alt="responsive image" style="width:1100px;height:600px;"> -->
<footer>
<div id="templatemo_footer" style="clear: both;
width: 100%;
padding: 20px 0px 20px 0;
text-align: center;
border-top: 1px solid #25211e;
margin-top:100px;
color: #999;
background-color: #111110;">

       <a style="color: #fff;font-weight: normal;" href="index.php">Home</a> | <a style="color: #fff;font-weight: normal;" href="https://www.facebook.com" target="_blank"> Facebook</a> | <a style="color: #fff;font-weight: normal;" href="https://www.instagram.com" target="_blank"> Instagram </a> | <a style="color: #fff;font-weight: normal;" href="info.php">Contact Us</a><br />
    Copyright &#169; 2017 <a style="color: #fff;font-weight: normal;" href="index.php"><strong>Shopping Website</strong></a> </div> 
<!-- end of footer -->
</footer>
</div>

';