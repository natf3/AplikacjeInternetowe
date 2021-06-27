<?php 
session_start();  
if (!isset($_SESSION['admin_id'])) {
  header("location:login.php");
}

include "./templates/top.php"; 

?>
 
<?php include "./templates/navbar.php"; ?>

<div class="container-fluid">
  <div class="row">

</div>
</div>
 <?php include "./templates/sidebar.php"; ?>   
 
 <div id="chart-container">
			<canvas id="mycanvas"></canvas>
		</div> 

<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/admin.js"></script>