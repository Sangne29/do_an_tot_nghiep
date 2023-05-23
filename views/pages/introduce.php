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
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 50%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section" >
  <h1>About Us</h1>
  <p>Graduate thesis instructor: Trần Thị Kim Chi</p>
  <p>Khóa luận tốt nghiệp 2023</p>
</div>

<h2 style="text-align:center ">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card" style=" display: flex; justify-content: center;">
      <img src="avatar/hoang.jpg"  style="width:50% ">
      <div class="container">
        <h2>Nguyễn Tiến Hoàng</h2>
        <p class="title">Owner</p>
        <p>Developer & QA</p>
        <p>tienghoang@example.com</p>
        <p><button class="button" style="width:72%">Contact:0123456789</button></p>
      </div>
    </div>
  </div>

  <div class="column">
  <div class="card" style=" display: flex; justify-content: center;">
      <img src="avatar/sang.jpg" style="width:50%">
      <div class="container">
        <h2>Huỳnh Tấn Sang</h2>
        <p class="title">Owner</p>
        <p>Developer & QA</p>
        <p>tansang@example.com</p>
        <p><button class="button" style="width:72%">Contact:0123456789 </button></p>
      </div>
    </div>
  </div>
  
  
</div>

</body>
</html>

	<!-- /section -->
<section>
	
</section>
<?php require_once('views/footer.php');  ?>