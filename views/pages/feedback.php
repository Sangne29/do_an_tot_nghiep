<?php
require_once('config.php');
require_once('system/Database.php');
require_once ('system/core.php');
?>

<?php require_once('views/header.php');  ?>
<?php

if(isset($_GET['cate'])){
	$cate =$_GET['cate'];
	$cateDes =$_GET['cateDes'];
	$parentCat =$_GET['parentCat'];
	$parentCatSymbol =$_GET['parentCatSymbol'];
}
if(!isset($_SESSION['customer_id'])) {

	?>
	<script> 
		alert('Vui lòng đăng nhập.') 
		window.location.replace("index.php?option=login");
</script>
	<?php
}else
{
	$feedback = loadModel('feedback');
	$list1=$feedback->list_feedback($_SESSION['customer_id']);

}

if(isset($_POST['feedback']))
{
	if(!isset($_SESSION['customer_id'])) {
		?>
		<script> alert('Vui lòng đăng nhập.') </script>
		<?php
		$feedback = loadModel('feedback');
		$list1=$feedback->list_feedback($_SESSION['customer_id']);
	}else
	{
		$feedback = loadModel('feedback');
		$data = array(
			'fullname'=>$_POST['fullname'],
			'email'=>$_POST['email'],
			'phone'=>$_POST['phone'],
			'title'=>$_POST['title'],
			'detail'=>$_POST['detail'],
			'CreateBy'=>$_SESSION['customer_id'],
			'status'=>1,
			'CateParent'=>$parentCatSymbol,
			'CateParentDes'=>$parentCat,
			'Cate'=>$cate,
			'CateDes'=>$cateDes,
			'ParentID'=>0
		);
		$feedback->feedback_insert($data); ?>
		<script> alert('Gửi yêu cầu tư vấn thành công.') </script>
		<?php
	}
}
?>
<div id="navigation">
	<div class="container">
		<div id="responsive-nav">	
			<div class="category-nav show-on-click">
				<?php require_once('views/modules/CategoryHeathy.php');  ?>
			</div>
			<?php require_once('views/modules/mainmenu.php');  ?>
		</div>
	</div>
</div>
<!-- BREADCRUMB -->
<div id="breadcrumb">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="index.php">Home</a></li>
			<li class="active">tư vấn sức khỏe	</li>
			<li class="active"><?php echo  $parentCat ?>	</li>
			<li class="active"><?php echo  $cateDes ?>	</li>
	</div>
</div>
<!-- /BREADCRUMB -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-6">
				<div class="billing-details">
					<table class="shopping-cart-table table">
						<thead>
							<tr>
								<th>Tên</th>
								<th>Số điện thoại </th>
								<th class="text-center">Loại</th>
								<th class="text-center">Tư vấn</th>
								<th class="text-center">Tiêu đề</th>
								<th class="text-center">Xem</th>

							</tr>
						</thead>
						<tbody>
							<?php foreach($list1 as $row):?>
								<?php $id=$row['id']; 

								?>
								<tr>
									<td class="text-center"><h6><?php echo $row['fullname']  ?></td>
										<td class="text-center"><?php echo $row['phone']  ?></td>
										<td class="text-center"><?php echo $row['CateParentDes']  ?></td>
										<td class="text-center"><?php echo $row['CateDes']  ?></td>
										<td class="text-center"><?php echo $row['title'] ?></td>
										<td><a href="index.php?option=feedback&id=<?php echo $row['id']  ?>" title="">Xem</a></td>
									</tr>
								<?php endforeach; ?>

							</tfoot>
						</table>
					</div>
				</div>
				<form name="from1" action="" method="post" class="clearfix">
					<div class="col-md-6">
						<div class="billing-details">
							<div class="form-group">
								<input class="input" type="text" name="fullname" placeholder="Họ tên của bạn">
							</div>
							<div class="form-group">
								<input class="input" type="Email" name="email" placeholder="Email">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="phone" placeholder="Số điện thoại">
							</div>
							<div class="form-group">
								<input class="input" type="tel" value="" name="title" placeholder="Tiêu đề">
							</div>
							<div class="form-group">
								<textarea name="detail" class="input" rows="6" placeholder="Nội dung" required></textarea>
							</div>
							<button type="submit"   name="feedback"  class="primary-btn">Send feedback</button>
						</div>
					</div>
				</form>
			</div>
		</div>



		<?php require_once('views/footer.php');  ?>