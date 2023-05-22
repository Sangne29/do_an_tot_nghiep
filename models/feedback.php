<?php 
class feedback extends Database
{
	
	function __construct()
	{
		parent::__construct();
		$this->table = $this->tablename('feedback');
	}
	function feedback_insert($data)
	{
		$strf='';
		$strv='';
		foreach ($data as $k => $v)
		{
			$strf.=$k.', ';
			$strv.="'".$v."',";
		}
		$strf=rtrim(rtrim($strf),',');
		$strv=rtrim(rtrim($strv),',');
		$sql="INSERT INTO $this->table ($strf) VALUES ($strv)";
		$this->QueryNoResult($sql);
	}
	function list_feedback($userid)
	{
		$sql="SELECT * FROM $this->table 
		WHERE status='1' AND ParentID = '0' AND CreateBy = '$userid' ";
		return $this->QueryAll($sql);
	}
		function feedback_rowid($id)
	{
		$sql="SELECT * FROM $this->table 
		WHERE id='$id'";
		return $this->QueryOne($sql);
	}
		function list_feedback_by_parentID($ParentId)
	{

		$sql="SELECT * FROM $this->table 
		WHERE status='1' AND ParentID = '$ParentId'";
		return $this->QueryAll($sql);
	}
}