<?php 
$id=$_REQUEST['id'];
$feedback= loadModel('feedback');
$row=$feedback->feedback_rowid($id);
?>
<?php require_once 'views/header.php';
?>

<section class=" clearfix maincontent py-2">
	<form name="form1" method="post" action="index.php?option=feedback&cat=process"  enctype="multipart/form-data" >
		<div class="container" >
			<div class="card" >
				<div class="card-header" >
					<div class="row" >
						<div class="col-md-5" >
							<h5>Trả lời tư vấn</h3>
							</div>
							<div class="col-md-6 text-right" >	
								<a class="btn btn-sm btn-danger" href="index.php" >Exit</a>
							</div>
						</div>
					</div>
					<div class="card-block p-3">
						<div class="row">
							<div class="col-md-9">
								<input type="hidden" name="id" value="<?php echo $row['id'] ?>">
								<fieldset class="form-group" >
									<label>Trả lời </label>
									<input disabled name="name" value="<?php echo $row['fullname']  ?>" class="form-control"  required></<input type="text">

									<label>Loại tư vấn </label>
									<input disabled name="name" value="<?php echo $row['CateParentDes']  ?>" class="form-control"  required></<input type="text">

									<label>Chi tiết tư vấn </label>
									<input disabled name="name" value="<?php echo $row['CateDes']  ?>" class="form-control"  required></<input type="text">
									<label>Nội dung tư vấn </label>
									<input disabled name="name" value="<?php echo $row['detail']  ?>" class="form-control"  required></<input type="text">
									<p class="p-3">-----------Trả lời tư vấn--------- </p>
									<br>
									<label>Title </label>
									<input name="title" class="form-control"  required></<input type="text">
									<label>Detail</label> <br>
									<textarea name="detail" class="form-control" rows="3" placeholder="Nội dung" required></textarea>
								</div>
							</div>	
							<button class="btn btn-sm btn-danger" name="REPLY"  type="submit">
							Trả lời 	</button> 		
						</div>	
					</div>
				</div>
			</form>
		</section>