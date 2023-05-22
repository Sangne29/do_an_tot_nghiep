<?php
if($_POST){
    foreach ($_POST as $p) echo $p." ";
    $servername  = "localhost";
		$username = "root";
		$password = "";
		$dbname = "test";
		$conn = new mysqli($servername, $username, $password,$dbname);
	// echo	 $conn;

	if ($conn->connect_error) {
		die("Connection Failed: ".$conn->connect_error);
	}
    $sql = mysqli_query($conn, "INSERT INTO `test`.`latnt_review`(`name` , `email`,`review` , `product_id` , `rating`) VALUES ('".$_POST['name']."' , '".$_POST['email']."','".$_POST['review']."', ".$_POST['product_id']." , ".$_POST['rating']." )");
    }
    header('Location: ' . $_SERVER['HTTP_REFERER']);
?>