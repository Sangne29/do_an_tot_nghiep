<?php require_once('views/header.php'); ?>
<div id="navigation">
		<div class="container">
			<div id="responsive-nav">	
					<div class="category-nav show-on-click">
				<?php require_once('views/modules/category.php');  ?>
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
				<li class="active">My account</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->
<?php if (!isset($_SESSION['customer_id'])) {  ?>

	
	<p class="alert-danger alert"> Bạn chưa đăng nhập</p>

	<?php
 } else{

$user = loadModel('user');
$id = $_SESSION['customer_id'];
$row= $user->list_user_cuss($id);



?>


<section class="container aa">
<div class="row ">
	<div class="col-md-12  "> <h3 > Thông tin tài khoản</h3>
		<table class="table table-inverse">
			
			<tbody>
				<tr>
					<td> Full Name: </td>
<<<<<<< HEAD
					<td><?php echo  $row['fullname'] ?> </td>
=======
					<td><input <?php echo $row['fullname'] ?> </input></td>
>>>>>>> 04d0de2ed57e2583d8b1d70b3fc4a4c583d512a9
				</tr>
				<tr>
					<td> Email: </td>
					<td><?php echo $row['email'] ?> </td>
				</tr>
				<tr>
					<td> Phone Number: </td>
					<td><?php echo $row['phone'] ?> </td>
				</tr>
				<tr>
					<td> Gender: </td>
					<td><?php if ($row['gender']==0) {
					echo "Nam";
					}else{echo "Nữ";}  ?> </td>
				</tr>
			<tr>
					<td>Join At: </td>
					<td><?php echo $row['created_at'] ?> </td>
				</tr>
			</tbody>
			<a href="index.php?option=updateprofile"> update profile</a>
		</table>
	</div>
</div>
</section>
	 

	 <style type="text/css">
	 	.aa{
	 		padding-top: 20px;
	 	}
	 </style>
	 <?php  } ?>
	 <?php require_once('views/footer.php');  ?>