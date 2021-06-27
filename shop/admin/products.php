<?php session_start(); 
include_once("./templates/top.php"); 
include_once("./templates/navbar.php"); 

?>
<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>
    <div class="row">
        		<div class="col-12">
        			<form name="form1" method="post" action="add_product.php">
		        		<label>Nazwa produktu</label>
		        		<input type="text" name="product_name" class="form-control" >
		        	</div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Opis</label>
		        		<textarea class="form-control" name="product_desc"></textarea>
		        	</div>
        		</div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Cena</label>
		        		<input type="number" name="product_price" class="form-control">
		        	</div>
        		</div>
        		<input type="hidden" name="add_product" value="1">
        		<div class="col-12">
            <input type="submit" class="btn btn-primary" value="Wyślij" />
        		</div>
            </form>
        	
          </div>
          
          </div>
  </div>
<?php include_once("./templates/footer.php"); 

?>

