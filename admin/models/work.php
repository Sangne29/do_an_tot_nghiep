<?php

class work extends Database
{
	
	function __construct()
	{
		parent::__construct();
		$this->table = $this->TableName('work');
	}

	function list_work($page=true,$id)
	{
		$sql="SELECT * FROM $this->table 
		WHERE UserId = '$id'";
		return $this->QueryAll($sql);
	}
}