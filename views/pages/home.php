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

<img src="../DO_AN_TOT_NGHIEP/public/img/4691679dada473fa2ab5.jpg" alt="" style="width: 100%">

<!--


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