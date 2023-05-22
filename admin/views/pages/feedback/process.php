<?php 
$feedback= loadModel('feedback');
if(isset($_POST['REPLY']))
{	

		$data = array(
			'fullname'=>$_SESSION['user_fullname'],
			'email'=>$_SESSION['email'],
			'phone'=>$_SESSION['phone'],
			'title'=>$_POST['title'],
			'detail'=>$_POST['detail'],
			'CreateBy'=>$_SESSION['user_id'],
			'status'=>1,
			'CateParent'=>'',
			'CateParentDes'=>'',
			'Cate'=>'hg',
			'CateDes'=>'',
			'ParentID'=>$_POST['id']
		);
		$feedback->feedback_insert($data);
		set_flash('thongbao',' Trả lời thành công.');
		redirect('index.php?option=feedback');	
}

 ?>
 