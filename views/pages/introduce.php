<?php
$post = loadModel('post');
$list1 = $post->post_list1();
 require_once('views/header.php');  ?>

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
				<li class="active">Post</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

<!-- section -->
	<div>
		html
	</div>
	<!-- /section -->
<section>
	
</section>
<?php require_once('views/footer.php');  ?>