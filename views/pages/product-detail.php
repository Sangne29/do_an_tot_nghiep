<?php require_once('views/header.php');  ?>

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
<?php 
$product=loadModel('product');
$category=loadModel('category');
$review = loadModel('review');

$slug=$_REQUEST['id'];
$row=$product->product_rowslug($slug);

$review_by_product = $review->get_review($row['id']);
// echo $review_by_product['review'];
$title=$row['name'];
$list_catid=$category->category_listid($row['catid']);
$list_other=$product->product_orther($list_catid,$row['id'],4);

?>
<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.php">Home</a></li>
				<li><a href="index.php?option=product">Products</a></li>
				<li><a href="index.php?option=category">Category</a></li>
				<li class="active"><?php echo $row['name'];?></li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!--  Product Details -->
				<div class="product product-details clearfix">
					<div class="col-md-6">
						<div id="product-main-view">
							<div class="product-view">
								<img src="public/img/<?php echo $row['img'];?>" alt="">
							</div>
							<div class="product-view">
								<img src="public/img/<?php echo $row['img'];?>" alt="">
							</div>
						</div>
						<div id="product-view">
							<div class="product-view">
									<img src="public/img/<?php echo $row['img'];?>" alt="">
							</div>
							<div class="product-view">
									<img src="public/img/<?php echo $row['img'];?>" alt="">
							</div>
							<div class="product-view">
									<img src="public/img/<?php echo $row['img'];?>" alt="">
							</div>
							<div class="product-view">
									<img src="public/img/<?php echo $row['img'];?>" alt="">
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="product-body">
							<div class="product-label">
								<span>New</span>
								<span class="sale">-20%</span>
							</div>
							<h2 class="product-name"><?php echo $row['name'];?></h2>
						<h3 class="product-price"><?php echo number_format($row['pricesale'], 0, ',', '.'); ?>₫ <del class="product-old-price"><?php echo number_format($row['price'], 0, ',', '.'); ?>₫</del></h3>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o empty"></i>
								</div>
								<a href="#">3 Review(s) / Add Review</a>
							</div>
							<p><strong>Availability:</strong> In Stock</p>
								<div class="product-view float-right">
								
									<img style="width: 25%;height: 25%;" src="public/img/<?php echo $row['qr_code'];?>" alt="">
							</div>
							<div class="product-options">	
							</div>

							<div class="product-btns">
								<div class="qty-input">
									<span class="text-uppercase">QTY: </span>
									<input class="input" type="number">
								</div>
								<a href="index.php?option=cart&cat=insert&pid=<?php echo $row['id'];?>"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button></a>
								<div class="pull-right">
									<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
									<button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
									<button class="main-btn icon-btn"><i class="fa fa-share-alt"></i></button>
								</div>
							</div>

						</div>
					</div>
					<div class="col-md-12">
						<div class="product-tab">
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
								<li><a data-toggle="tab" href="#tab1">Details</a></li>
								<li><a data-toggle="tab" href="#tab2">Reviews (<?php echo count($review_by_product);?>)</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab1" class="tab-pane fade in active">
									<p><?php echo $row['detail'];?>.</p>
								</div>
								<div id="tab2" class="tab-pane fade in">

									<div class="row">
										<div class="col-md-6">
											<div class="product-reviews">

											<?php 
												if($review_by_product){
													$cnt = 1;
													foreach($review_by_product as $rev){
													echo '<div class="single-review">
															<div class="review-heading">
																<div><a href="#"><i class="fa fa-user-o"></i> '.$rev['name'].'</a></div>
																<div><a href="#"><i class="fa fa-clock-o"></i>'.$rev['createda_at'].'</a></div>
																<div class="review-rating pull-right" id="review-rating-'.$cnt.'" >
																	
																</div>
																<script>
																for(let i =0 ; i < '.$rev['rating'].' ; i++){
																	document.getElementById("review-rating-'.$cnt.'").innerHTML += `<i class="fa fa-star"></i>`;

																}
																for(let i =0 ; i < 5- '.$rev['rating'].' ; i++){
																	document.getElementById("review-rating-'.$cnt.'").innerHTML += `<i class="fa fa-star-o empty"></i>`;

																}
																</script>
															</div>
															<div class="review-body">
																<p>'.$rev['review'].'</p>
															</div>
														</div>';
														$cnt = $cnt + 1 ;
													}
												}else {
													// echo "0 Review";
												}
											?>

												

												

												<ul class="reviews-pages">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#"><i class="fa fa-caret-right"></i></a></li>
												</ul>
											</div>
										</div>
										<div class="col-md-6">
											<h4 class="text-uppercase">Write Your Review</h4>
											<p>Your email address will not be published.</p>
											<form class="review-form" method="POST" action="views/pages/review.php">
												<div class="form-group">
													<input class="input" type="text" name='name' placeholder="Your Name" />
												</div>
												<div class="form-group" style='display:none;'>
													<input class="input" type="text" name='product_id' value="<?php echo $row['id'];?>" />
												</div>
												<div class="form-group">
													<input class="input" type="email" name='email' placeholder="Email Address" />
												</div>
												<div class="form-group">
													<textarea class="input" name='review' placeholder="Your review"></textarea>
												</div>
												<div class="form-group">
													<div class="input-rating">
														<strong class="text-uppercase">Your Rating: </strong>
														<div class="stars">
															<input type="radio" id="star5" name="rating" value="5" /><label for="star5"></label>
															<input type="radio" id="star4" name="rating" value="4" /><label for="star4"></label>
															<input type="radio" id="star3" name="rating" value="3" /><label for="star3"></label>
															<input type="radio" id="star2" name="rating" value="2" /><label for="star2"></label>
															<input type="radio" id="star1" name="rating" value="1" /><label for="star1"></label>
														</div>
													</div>
												</div>
												<button class="primary-btn">Submit</button>
											</form>
										</div>
									</div>



								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /Product Details -->
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
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">SẢN PHẨM LIÊN QUAN CÙNG LOẠI</h2>
					</div>
				</div>
				<!-- section title -->

				 <?php foreach($list_other as $rlist): ?>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="product product-single">
						<div class="product-thumb">
							
							<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
							<img src="public/img/<?php echo $rlist['img'];?>" alt="">
						</div>
						<div class="product-body">
							<h3 class="product-price"><?php echo number_format($rlist['pricesale'], 0, ',', '.'); ?>₫ <del class="product-old-price"><?php echo number_format($rlist['price'], 0, ',', '.'); ?>₫</del></h3>
							<div class="product-rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o empty"></i>
							</div>
							<h2 class="product-name"><a href="index.php?option=product&id=<?php  echo $rlist['slug']; ?>"><?php echo $rlist['name'];?></a></h2>
							<div class="product-btns">
								<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
								<button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
								<a href="index.php?option=cart&cat=insert&pid=<?php echo $rlist['id'];?>"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button></a>
							</div>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
			</div>
		</div>
	</div>

<?php require_once('views/footer.php');  ?>