<?php session_start(); 
include_once("./templates/top.php"); 
include_once("./templates/navbar.php"); 

?>
<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>
    <div class="row">
        		<div class="col-12">
        			<form name="form1" method="post" action="add_image.php">
		        		<label>Nazwa produktu</label>
		        		<input type="text" name="product_name" class="form-control" >
		        	</div>
                    <div class="col-12">
        			<form name="form1" method="post" action="add_image.php">
		        		<label>Nazwa zdjęcia(musi znajdowac się w katologu uploads/images)</label>
		        		<input type="text" name="image_name" class="form-control" >
		        	</div> 
                <input type="hidden" name="add_image" value="1">
        		<div class="col-12">
            <input type="submit" class="btn btn-primary" value="Wyślij" >
        		</div>
            </form>
        	
          </div>
          
          </div>
  </div>
<?php include_once("./templates/footer.php"); 

?>

