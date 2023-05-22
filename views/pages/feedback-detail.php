<?php
require_once('config.php');
require_once('system/Database.php');
require_once ('system/core.php');
?>
<?php require_once('views/header.php');  ?>
<?php
$id=$_REQUEST['id'];
if(!isset($_SESSION['customer_id'])) {
	?>
	<script> alert('Vui lòng đăng nhập.') </script>
	<?php
	

}else
{
	$feedback = loadModel('feedback');
	$row=$feedback->feedback_rowid($id);
	$list1=$feedback->list_feedback_by_parentID($row['id']);
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
			<li class="active">Feedback	</li>
		</ul>
	</div>
</div>
<!-- /BREADCRUMB -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<h3>Chi tiết tư vấn</h3>
				<table class="shopping-cart-table table">
					<tbody>
						<tr>
							<td class=""><h5>Tên</h5></td>
							<td><?php echo $row['fullname']?></td>
						</tr>
						<tr>
							<td class=""><h5>Số điện thoại</h5></td>
							<td><?php echo $row['phone']?></td>
						</tr>
						<tr>
							<td class=""><h5>Tư vấn</h5></td>
							<td><?php echo $row['CateParentDes']?></td>
						</tr>
						<tr>
							<td class=""><h5>Loại tư vẫn</h5></td>
							<td><?php echo $row['CateDes']?></td>
						</tr>
						<tr>
							<td class=""><h5>Tiêu đề</h5></td>
							<td><?php echo $row['title']?></td>
						</tr>		
						<tr>
							<td class=""><h5>Chi tiết</h5></td>
							<td><?php echo $row['detail']?></td>
						</tr>		
					</tbody>
				</table>
			</div>
		</div>
		<?php foreach($list1 as $row1):?>
			<?php $id=$row['id']; 

			?>
			<div class="row">
				<div class="col-md-12">
					<h3>Phản hồi từ admin</h3>
					<table class="shopping-cart-table table">
						<tbody>
							<tr>
								<td class=""><h5>Tên</h5></td>
								<td><?php echo $row1['fullname']?></td>
							</tr>
							<tr>
								<td class=""><h5>Số điện thoại</h5></td>
								<td><?php echo $row1['phone']?></td>
							</tr>
							<tr>
							<td class=""><h5>Tiêu đề</h5></td>
							<td><?php echo $row1['title']?></td>
						</tr>		
						<tr>
							<td class=""><h5>Nội dung phản hồi</h5></td>
							<td><?php echo $row1['detail']?></td>
						</tr>		
						</tbody>
					</table>
				</div>
			</div>
		<?php endforeach; ?>

	</div>
	<?php require_once('views/footer.php');  ?>