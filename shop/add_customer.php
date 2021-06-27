<?php
include 'config/database.php';
include_once "objects/customer.php";
include_once "objects/form.php";

$database = new Database();
$db = $database->getConnection();
 
$customer = new Customer($db);
 
    session_start();
    $name=$_SESSION["name"]=$customer->first_name =($_POST["name"]);
    $last_name=$_SESSION["last_name"]=$customer->last_name =($_POST["lastName"]);
    $phone=$_SESSION["phone"]=$customer->phone = ($_POST["telephone"]);
    $email=$_SESSION["email"]=$customer->email = ($_POST["email"]);
    $address=$_SESSION["address"]=$customer->address= ($_POST["address"]);
    $code=$_SESSION["code"]=$customer->postal_code= ($_POST["code"]); 
    $city=$_SESSION["city"]=$customer->city= ($_POST["inputCity"]);
    

    if(empty ($name) )
        header("Location: form.php?action=empty");
    
     else if (empty($last_name))
        header("Location: form.php?action=empty");
     
     else if (empty($email))
        header("Location: form.php?action=empty");
     
     else if (empty($address)) 
        header("Location: form.php?action=empty");
       
    else if (empty($code))
            header("Location: form.php?action=empty");
        
    else if (empty($city)){
        header("Location: form.php?action=empty");
    }
        else if (!preg_match("(\b\d{2}-\d{3}\b)", $code)) {
            header("Location: form.php?action=unable");
            }
    else if (!preg_match('#[0-9\+]{3,}#', $phone)) {
            header("Location: form.php?action=unable");
            }
    else if($customer->create()){
        header("Location: checkout.php");
    }else{
        header("Location: form.php?action=unable");
    }
   
   
    

   	
	

?> 