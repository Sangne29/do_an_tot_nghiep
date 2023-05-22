<?php require_once('views/header.php');  
require_once('system/core.php');
$product=loadModel('product');
$list_lastnew=$product->product_home_lastnew(7);
$list_product=$product->product_list(10);
$list_product_sale=$product->product_list(1);
?>
<div id="navigation">
		<!-- container -->
		<div class="container">
			<div id="responsive-nav">	
				
					<div class="category-nav ">
				<?php require_once('views/modules/category.php');  ?>
			</div>
<?php require_once('views/modules/mainmenu.php');  ?>
			<!-- menu nav -->
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /NAVIGATION -->
<?php require_once('views/modules/slider.php');  ?>
<div>



<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<div class="banner banner-1" >
						<img src="../php_Eshop_3/public/img/post/fitfood-vn-hop-tac-cung-h-h-nutrition-ra-mat-goi-tu-van-dinh-duong-chuyen-sau.jpg" alt="">
						
					</div>
					<a href="../php_Eshop_3/index.php?option=post&id=fitfood-vn-hop-tac-cung-h-h-nutrition-ra-mat-goi-tu-van-dinh-duong-chuyen-sau" style="text-align: center;">FITFOOD VN HỢP TÁC CÙNG H&H NUTRITION RA MẮT GÓI TƯ VẤN DINH DƯỠNG CHUYÊN SÂU.</a>
			
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<div class="banner banner-1" >
						<img src="../php_Eshop_3/public/img/post/tam-quan-trong-cua-suc-khoe.jpg" alt="">
						
					</div>
					<a href=" ../php_Eshop_3/index.php?option=post&id=fitfood-hop-tac-cung-star-kombucha-ra-mat-combo-an-sach-song-khoe" style="text-align: center;">Tầm quan trọng của sức khỏe</a>
				
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3">
					<div class="banner banner-1" >
						<img src="../php_Eshop_3/public/img/post/fitfood-hop-tac-cung-star-kombucha-ra-mat-combo-an-sach-song-khoe.jpg	" alt="">
						
					</div>
					<a href="../http://localhost/php_Eshop_3/index.php?option=post&id=fitfood-hop-tac-cung-star-kombucha-ra-mat-combo-an-sach-song-khoe" style="text-align: center;">FITFOOD HỢP TÁC CÙNG STAR KOMBUCHA RA MẮT COMBO ĂN SẠCH SỐNG KHỎE</a>
					
				</div>
				<!-- /banner -->

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->



	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

			<!-- /row -->
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 data-target="h2" class="title">BÁN CHẠY NHẤT</h2>
						<div class="pull-right">
							<div class="product-slick-dots-2 custom-dots">
							</div>
						</div>
					</div>
				</div>
				<!-- section title -->

				<!-- Product Single -->
				<?php foreach($list_product_sale as $rlist): ?>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single product-hot">
						<div class="product-thumb">
							<div class="product-label">
								<span class="sale">Top Bán chạy</span>
							</div>
							
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
							<img src="public/img/<?php echo $rlist['img'];?>" alt="">
						</div>
						<div class="product-body">
						<h3 class="product-price"><?php echo number_format($rlist['pricesale'], 0, ",", "."); ?> VND <del class="product-old-price"><?php echo number_format($rlist['price'], 0, ",", "."); ?>VND</del></h3>

							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="index.php?option=product&id=<?php  echo $rlist['slug']; ?>"><?php echo $rlist['name'];?></a></h2>
							<div class="product-btns">
								
								<button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
								<a href="index.php?option=cart&cat=insert&pid=<?php echo $rlist['id'];?>"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button></a>
							</div>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
				<!-- /Product Single -->

				<!-- Product Slick -->
				<div class="col-md-9 col-sm-6 col-xs-6">
					<div class="row">
						<div id="product-slick-2" class="product-slick">
							<!-- Product Single -->
							 <?php foreach($list_product as $ra): ?>
							<div class="product product-single">
								<div class="product-thumb">
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
									<img src="public/img/<?php echo $ra['img'];?>" alt="">
								</div>
								<div class="product-body">
						<h3 class="product-price"><?php echo number_format($ra['price'], 0, ',', '.'); ?> VND</h3>

									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name"><a href="index.php?option=product&id=<?php  echo $rlist['slug']; ?>"><?php echo $ra['name'];?></a></h2>
									<div class="product-btns">
										
										<button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
										<a href="index.php?option=cart&cat=insert&pid=<?php echo $rlist['id'];?>"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button></a>
									</div>
								</div>
							</div>
							<?php endforeach; ?>
							<!-- /Product Singlesss -->
						</div>
					</div>
				</div>
				<!-- /Product Slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- section -->
	<!-- <div class="section">
	
		<div class="container">
		
			<div class="row">
				
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">THỰC PHẨM MỚI</h2>
					</div>
				</div>
			
			</div>
		

			
			<div class="row">
				
				
				
				 <?php foreach($list_lastnew as $rlist): ?>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
							<img src="public/img/<?php echo $rlist['img'];?>" alt="">
						</div>
						<div class="product-body">
							<h3 class="product-price"><?php echo number_format($rlist['pricesale'], 0, ',', '.'); ?> VND<del class="product-old-price"><?php echo number_format($rlist['price'], 0, ',', '.'); ?> VND</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="index.php?option=product&id=<?php  echo $rlist['slug']; ?>"><?php echo $rlist['name'];?></a></h2>
							<div class="product-btns">
								
								<button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
								<a href="index.php?option=cart&cat=insert&pid=<?php echo $rlist['id'];?>"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button></a>
							</div>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
			
			</div>
			

			
		</div>
		
	</div> -->
	<!-- /section -->
<?php require_once('views/footer.php');  ?>