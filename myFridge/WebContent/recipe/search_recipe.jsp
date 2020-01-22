<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Maeggi Seggi</title>

<!-- Favicon -->
<link rel="icon" href="../../yummy-master/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="../../yummy-master/style.css" rel="stylesheet">
<link href="../../css/common/fonts.css" rel="stylesheet">

<!--  <!-- Responsive CSS -->
<link href="../../yummy-master/css/responsive/responsive.css"
	rel="stylesheet">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<style type="text/css">
img {
	width: 270px;
	height: 250px;
	object-fit: cover;
}

h4 {
	margin-left: 200px;
	font-family: PapyrusM;
	font-size: 30pt;
	text-align: justify;
	float: left;
}

#more {
	width: 50px;
	background-color: #f8585b;
	border: none;
	color: #fff;
	/* padding: 10px 0; */
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 25px;
	margin: 4px;
	cursor: pointer;
	float: right;
	border-radius: 10px;
}

#underline {
	color: red;
}

li {
	display: inline;
	font-size: 25px;
}

.checkbox-group {
	font-size: 20pt;
	float: left;
}



.single-post {
	display: inline-block;
}

.single-post-line {
	overflow-y: auto;
	width: 100%;
	max-width: 100%;
}
</style>
</head>
<body>
	<!-- Preloader Start -->
	<div id="preloader">
		<div class="yummy-load"></div>
	</div>
	<!-- Background Pattern Swither -->
	<div id="pattern-switcher">Bg Pattern</div>
	<div id="patter-close">
		<i class="fa fa-times" aria-hidden="true"></i>
	</div>

	<!-- ****** Top Header Area Start ****** -->
	<div class="top_header_area">
		<div class="container">
			<div class="row">
				<div class="col-5 col-sm-6">
					<!--  Top Social bar start -->
					<div class="top_social_bar">
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-skype" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
					</div>
				</div>
				<!--  Login Register Area -->
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<div class="login">
								<a href="register.html">Sing in</a>
							</div>
							<div class="register">
								<a href="register.html">Sing up</a>
							</div>
						</div>
						<!-- Search Button Area -->
						<div class="search_button">
							<a class="searchBtn" href="#"><i class="fa fa-search"
								aria-hidden="true"></i></a>
						</div>
						<!-- Search Form -->
						<div class="search-hidden-form">
							<form action="#" method="get">
								<input type="search" name="search" id="search-anything"
									placeholder="Search Anything..."> <input type="submit"
									value="" class="d-none"> <span class="searchBtn"><i
									class="fa fa-times" aria-hidden="true"></i></span>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Top Header Area End ****** -->
	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<div class="container">
			<div class="row">
				<!-- Logo Area Start -->
				<div class="col-12">
					<div class="logo_area text-center">
						<a href="index.html" class="yummy-logo">Maeggi Seggi</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#yummyfood-nav"
							aria-controls="yummyfood-nav" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fa fa-bars" aria-hidden="true"></i> Menu
						</button>
						<!-- Menu Area Start -->
						<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item active"><a class="nav-link"
									href="index.html">MY FRIDGE<span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="yummyDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">ABOUT US</a>
									<div class="dropdown-menu" aria-labelledby="yummyDropdown">
										<a class="dropdown-item" href="index.html"></a> <a
											class="dropdown-item" href="archive.html">INTRO</a> <a
											class="dropdown-item" href="single.html">GRADE</a> <a
											class="dropdown-item" href="static.html">QnA</a> <a
											class="dropdown-item" href="contact.html">CONTACT</a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="yummyDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">RECIPE</a>
									<div class="dropdown-menu" aria-labelledby="yummyDropdown">
										<a class="dropdown-item" href="#"></a> <a
											class="dropdown-item" href="theme_recipe.jsp"><b>테마별
												레시피조회</b></a> <a class="dropdown-item" href="level_recipe.jsp"><b>난이도별
												레시피 조회</b></a> <a class="dropdown-item" href="search_recipe.jsp"><b>레시피
												검색</b></a>
									</div></li>
								<li class="nav-item"><a class="nav-link" href="#">RESTAURANT</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="archive.html">MY PAGE</a></li>
								<li class="nav-item"><a class="nav-link" href="#">MANAGE</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">RECIPE</li>
							<li class="breadcrumb-item active" aria-current="page">Recipes
								Search</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<br />
	<div class="container" style="margin-top: 30px; font-family: PapyrusM;">
		<div class="row">
			<div class="col-sm-4">
				<h2 class="aside-title">Recipe Search</h2>
				<form>
					<div class="form-group">
						<div class="input-group">
							<input type="text" name="q" class="form-control"
								placeholder="Type something ..." value="매생이국"
								style="font-size: 20pt;">
							<div class="input-group-btn">
								<input type="button" id="more" value="조회"> <i
									class="ion-search"></i>
							</div>
						</div>
					</div>
				</form>
				<ul>
					<li class="active"><a href="#">All</a></li>
					<li><a href="#">Latest</a></li>
					<li><a href="#">Popular</a></li>
					<li><a href="#">Views</a></li>
				</ul>

				<div class="container">
					<form class="checkbox-group">
						<div id="title">나라별</div>
						<div class="form-group">
							<label><input type="radio" name="c-food" checked>All
								Countries</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="c-food">한식</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="c-food"> 퓨전</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="c-food"> 서양/이탈리아</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="c-food"> 중국
								/동남아시아</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="c-food"> 일본</label>
						</div>
						<br>
						<div id="title">종류별</div>
						<div class="form-group">
							<label><input type="checkbox" name="category" checked>All
								Categories</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="category">메인반찬</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="category">피자/디저트</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="category">찜/찌개/전골/국</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="category">밥</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="category">만두/면류</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="category">나물/생채/샐러드</label>
						</div>
					</form>
				</div>

				<hr class="d-sm-none">
			</div>
			<div class="col-sm-8">
				<div style="font-size: 20pt; float: right;">
					<div class="nav-tabs-right">
						<select class="form-control">
							<option>Limit</option>
							<option>10</option>
							<option>20</option>
							<option>50</option>
							<option>100</option>
						</select>
					</div>
					<div class="search-result">
						<span id="underline">매생이국</span> 으로 조회된 결과는 5,200 개 입니다.
					</div>
				</div>
				<div class="single-post-line">
					<div class="single-post">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../../yummy-master/img/blog-img/15.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By Marian</a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
							</div>
							<a href="#">
								<h6>The Top Breakfast And Brunch Spots In Hove</h6>
							</a>
						</div>
					</div>


					<!-- Single Related Post-->
					<div class="single-post">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../../images/pork2.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By Marian</a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
							</div>
							<a href="#">
								<h6>The Top Breakfast And Brunch Spots In Hove</h6>
							</a>
						</div>
					</div>
				</div>
				<!-- Single Related Post-->
				<div class="single-post">
					<!-- Post Thumb -->
					<div class="post-thumb">
						<img src="../../yummy-master/img/blog-img/16.jpg" alt="">
					</div>
					<!-- Post Content -->
					<div class="post-content">
						<div class="post-meta d-flex">
							<div class="post-author-date-area d-flex">
								<!-- Post Author -->
								<div class="post-author">
									<a href="#">By Marian</a>
								</div>
								<!-- Post Date -->
								<div class="post-date">
									<a href="#">May 19, 2017</a>
								</div>
							</div>
						</div>
						<a href="#">
							<h6>The Top Breakfast And Brunch Spots In Hove</h6>
						</a>
					</div>
				</div>
				<!-- Single Related Post-->
				<div class="single-post">
					<!-- Post Thumb -->
					<div class="post-thumb">
						<img src="../../yummy-master/img/blog-img/5.jpg" alt="">
					</div>
					<!-- Post Content -->
					<div class="post-content">
						<div class="post-meta d-flex">
							<div class="post-author-date-area d-flex">
								<!-- Post Author -->
								<div class="post-author">
									<a href="#">By Marian</a>
								</div>
								<!-- Post Date -->
								<div class="post-date">
									<a href="#">May 19, 2017</a>
								</div>
							</div>
						</div>
						<a href="#">
							<h6>The Top Breakfast And Brunch Spots In Hove</h6>
						</a>
					</div>
				</div>
								<div class="single-post">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../../yummy-master/img/blog-img/15.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By Marian</a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
							</div>
							<a href="#">
								<h6>The Top Breakfast And Brunch Spots In Hove</h6>
							</a>
						</div>
					</div>
					<div class="single-post">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../../images/pork1.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By Marian</a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
							</div>
							<a href="#">
								<h6>The Top Breakfast And Brunch Spots In Hove</h6>
							</a>
						</div>
					</div>
			</div>
		</div>
	</div>
<div class="col-12">
                  
                        <nav style="float:right;margin-right: 200px;">
                            <ul class="pagination">
                                <li class="page-item active">
                                    <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                 <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                            <div class="page-status">
                            <p>Page 1 of 60 results</p>
                      	    </div>
                        </nav>
                        
                    </div>
               





	<!-- ****** Header Area End ****** -->

	<!-- ****** Footer Menu Area Start ****** -->
	<footer class="footer_area" style="clear: both;">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-content">
						<!-- Logo Area Start -->
						<div class="footer-logo-area text-center">
							<a href="index.html" class="yummy-logo">Maeggi Seggi</a>
						</div>
						<!-- Menu Area Start -->
						<nav class="navbar navbar-expand-lg">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#yummyfood-footer-nav"
								aria-controls="yummyfood-footer-nav" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars" aria-hidden="true"></i> Menu
							</button>
							<!-- Menu Area Start -->
							<div class="collapse navbar-collapse justify-content-center"
								id="yummyfood-footer-nav">
								<ul class="navbar-nav">
									<li class="nav-item active"><a class="nav-link" href="#">MY
											FRIDGE <span class="sr-only">(current)</span>
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#">ABOUT
											US</a></li>
									<li class="nav-item"><a class="nav-link" href="#">RECIPE</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">RESTAURANTS</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">MY
											PAGE</a></li>
									<li class="nav-item"><a class="nav-link" href="#">MANAGE</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Copywrite Text -->
					<div class="copy_right_text text-center">
						<p>
							Copyright @2018 All rights reserved | This template is made with
							<i class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Jquery-2.2.4 js -->
	<script src="../../yummy-master/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="../../yummy-master/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap-4 js -->
	<script src="../../yummy-master/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins JS -->
	<script src="../../yummy-master/js/others/plugins.js"></script>
	<!-- Active JS -->
	<script src="../../yummy-master/js/active.js"></script>

</body>
</html>