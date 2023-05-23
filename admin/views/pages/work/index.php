<?php

$feedback = loadModel('work');
$id = $_SESSION['user_id'];
$list=$feedback->list_work($page,$id);

require_once 'views/header.php';
?>
<section class="clearfix maincontent py-3">
	<div class="w-100 container " >
		<div class="card">
			<div class="card-header">
				<div class="row">
					<div class="col-md-6"><strong class="text-danger">Xem lịch làm việc</strong></div>
					<div class="col-md-6 text-right">
						<?php if ($_SESSION['Access']!=1) {
							echo "Bạn k có quyền sửa";
						}else{ ?>
							<a class="btb btn-success btn-sm" href="index.php?option=feedback&cat=trash" data-toggle="modal" data-target="#exampleModal"></i> Add</a>
							<!-- <a class="btb btn-danger btn-sm" href="index.php?option=feedback&cat=trash"><i class="fa fa-trash-o"></i> Trash</a> -->
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<form action="views/pages/work/add_work.php" method="POST">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">Thêm công việc</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<input type="text" name="id" value='<?php echo $id; ?>' style='display:none;'>
												<input type="text" class="form-control" id="name" name="name" placeholder="Name:">
												<input type="datetime-local"  class="form-control mt-3" id="timework" name="timework" placeholder="Time Work:">
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
												<button  class="btn btn-primary" id="btnSaveWork" type="submit">Save</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						<?php } ?>
					</div> 
					
				</div>
			</div>
			<div  class="card-block p-3">
				<?php if(has_flash('thongbao')):  ?>
					<div class="alert alert-danger" > <?php echo get_flash('thongbao') ; ?> </div>
				<?php endif; ?>

				<table id="myTable" class="table table-inverse table-hover table-bfeedbacked">
					<thead>
						<tr>
							<th class="text-center" style="width:100px;">ID</th>
							<th class="text-center" style="width:300px;height:10px;">Tên công việc</th>
							<th class="text-center">Thời gian</th>
							<th class="text-center">UserId</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach($list as $row):?>
							<tr>			
								<td class="text-center text-danger">0<?php echo $row['ID']  ?></td>
								<td class="text-center"><h6><?php echo $row['Name']  ?></td>
									<td class="text-center"><?php echo $row['TimeWork']  ?></td>
									<td class="text-center"><?php echo $row['UserId']  ?></td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<style type="text/css">
		
		a:hover{
			color: red;
			text-decoration: none;
		}
	</style>