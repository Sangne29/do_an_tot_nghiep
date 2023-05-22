<?php

 class Review extends Database
 {
 	
 	function __construct()
 	{
 		parent:: __construct();
 		$this->table = $this -> TableName('review');
 	}
 	function get_review($product_id)
 	{
 		$sql = " SELECT * FROM $this->table
 		 WHERE product_id='$product_id'";
 		return $this->QueryAll($sql);
 	}
 	
 } 
 ?>