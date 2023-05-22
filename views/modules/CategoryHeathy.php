
<?php 
$category = loadModel('category');
$listcat1 = $category->category_parentid(0);
$html_listcategory='';

?>
<!-- category nav -->
<span class="category-header">TƯ VẤN SỨC KHỎE <i class="fa fa-list"></i></span>
<ul class="category-list">
	<li class="dropdown side-dropdown"><a class="dropdown-toggle" href="" data-toggle="dropdown" aria-expanded="true">Tư vấn các loại bệnh<i class="fa fa-angle-right"></i></a>
		<div class="custom-menu">
			<ul class="list-links">
				<h3 class="list-links-title">Tư vấn các loại bệnh</h3></li>
				<li><a href="index.php?option=feedback&cate=b-tieu-duong&cateDes=Tiểu đường&parentCat=Tư vấn các loại bệnh&parentCatSymbol=tu-van-cac-loai-benh">Tiểu đường</a></li>
				<li><a href="index.php?option=feedback&cate=b-ung-thu&cateDes=Ung thư&parentCat=Tư vấn các loại bệnh&parentCatSymbol=tu-van-cac-loai-benh">Ung thư</a></li>
				<li><a href="index.php?option=feedback&cate=b-huyet-ap-cao&cateDes=Huyết áp cao&parentCat=Tư vấn các loại bệnh&parentCatSymbol=tu-van-cac-loai-benh'">Huyết áp cao</a></li>
				<li><a href="index.php?option=feedback&cate=b-huyet-ap&cateDes=Huyết áp thấp&parentCat=Tư vấn các loại bệnh&parentCatSymbol=tu-van-cac-loai-benh'">Huyết áp thấp</a></li>
				<li><a href="index.php?option=feedback&cate=b-benh-cum&cateDes=Bệnh cúm&parentCat=Tư vấn các loại bệnh&parentCatSymbol=tu-van-cac-loai-benh'">Bệnh cúm</a></li>
			</ul>
		</div>
	</li>
	<li class="dropdown side-dropdown"><a class="dropdown-toggle" href="" data-toggle="dropdown" aria-expanded="true">Tư vấn sức khỏe<i class="fa fa-angle-right"></i></a>
		<div class="custom-menu">
			<ul class="list-links">
				<h3 class="list-links-title">Tư vấn sức khỏe</h3></li>
				<li><a href="index.php?option=feedback&cate=giam-can-tang-can&cateDes=Giảm cân tăng cân&parentCat=Tư vấn sức khỏe&parentCatSymbol=tu-van-suc-khoe">Giảm cân tăng cân</a></li>
				<li><a href="index.php?option=feedback&cate=beo-phi&cateDes=Béo phì&parentCat=Tư vấn sức khỏe&parentCatSymbol=tu-van-suc-khoe">Béo phì</a></li>
				<li><a href="index.php?option=feedback&cate=suy-dinh-duong&cateDes=Suy dinh dưỡng&parentCat=Tư vấn sức khỏe&parentCatSymbol=tu-van-suc-khoe">Suy dinh dưỡng</a></li>
			</ul>	
		</div>
	</li>
	<li class="dropdown side-dropdown"><a class="dropdown-toggle" href="" data-toggle="dropdown" aria-expanded="true">Tâm sinh lý theo lứa tuổi<i class="fa fa-angle-right"></i></a>
		<div class="custom-menu">
			<ul class="list-links">
				<h3 class="list-links-title">Tâm sinh lý theo lứa tuổi</h3></li>
				<li><a href="index.php?option=feedback&cate=lua-tuoi-tre-em&cateDes=Lứa tuổi trẻ em&parentCat=Tâm sinh lý theo lứa tuổi&parentCatSymbol=tam-sinh-ly-theo-lua-tuoi">Lứa tuổi trẻ em</a></li>
				<li><a href="index.php?option=feedback&cate=thanh-thieu-nien&cateDes=Thanh thiêu niên&parentCat=Tâm sinh lý theo lứa tuổi&parentCatSymbol=tam-sinh-ly-theo-lua-tuoi">Thanh thiêu niên</a></li>
				<li><a href="index.php?option=feedback&cate=trung-nien&cateDes=Trung niên&parentCat=Tâm sinh lý theo lứa tuổi&parentCatSymbol=tam-sinh-ly-theo-lua-tuoi">Trung niên</a></li>
			</ul>
		</div>
	</li>
	<li ><a href="index.php?option=product&cat='.$c1['slug'].'">Khác</a>
	</li>
</ul>


<style type="text/css">
	
	.dropdown.side-dropdown>.custom-menu {
		border-left: 2px solid #F8694A;
		left: 100%;
		top: 0;
		width: 200px;
		-webkit-transform: translate(15px, 0px);
		-ms-transform: translate(15px, 0px);
		transform: translate(15px, 0px);
	}

</style>