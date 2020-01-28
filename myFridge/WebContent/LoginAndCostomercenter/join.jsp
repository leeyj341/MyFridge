<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>


<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title> 회원 가입 </title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="../yummy-master/css/responsive/responsive.css" rel="stylesheet">

</head>

<body>
	<!-- Preloader Start -->
	<div id="preloader">
		<div class="yummy-load"></div>
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
								<li class="nav-item"><a class="nav-link" href="#">RECIPE</a>
								</li>
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

	<!-- ****** Header Area End ****** -->

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>회원 가입</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> 회원 가입</a></li>
							<li class="breadcrumb-item active" aria-current="page">정보 입력
							</li>
						</ol>
					</nav>
				</div>
			</div>

			<div class="row">
				<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
				<div class="col-12" id="asklist_customview">
					<h2>회원 가입 - 정보 입력</h2>
				</div>
			</div>
		</div>
	</div>


	<div class="container">
		<form>
			<div class="join_form">
				<label for="email">아이디:</label> <input type="ID"
					class="form-control" id="join_email" placeholder="Enter email">
			</div>
			<div class="join_form">
				<label for="pwd">비밀번호:</label> <input type="password"
					class="form-control" id="join_pass" placeholder="Enter password">
			</div>
			<div class="join_form">
				<label for="pwd">비밀번호 확인:</label> <input type="text"
					class="form-control" id="join_pass" placeholder="Enter password">
			</div>
			<div class="join_form">
				<label for="pwd">이름:</label> <input type="text" class="form-control"
					id="join_pass" placeholder="name"></div>


				<div class="join_form">
					<label for="pwd"> 성별 :  </label> <span class="join_form"> <input
						name="gender" class="" type="radio" value="male" /> <label>남자</label>
					</span> <span class=""> <input name="gender" class="" type="radio"
						value="female" /> <label>여자</label>
					</span>
				</div>

			
			<div class="join_form">
				<label for="pwd">생년월일 6자리 : (예시: 940915)</label> <input type="text"
					class="form-control" id="join_pass" placeholder="yymmdd">
			</div>
			<div class="join_form">
				<label for="pwd">전화번호 : </label><input type="text"
					class="form-control" id="join_pass" placeholder="phone nunmber">
			</div>


			<div class="checkbox">
				<label><input type="checkbox"> Remember me</label>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>























	<!-- ****** Footer Menu Area Start ****** -->
	<footer class="footer_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-content">
						<!-- Logo Area Start -->
						<div class="footer-logo-area text-center">
							<hr />
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
									<li class="nav-item active"><a class="nav-link" href="#">Home
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Features</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Categories</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Archive</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">About</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Contact</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>


	</footer>
	<!-- ****** Footer Menu Area End ****** -->

	<!-- Jquery-2.2.4 js -->
	<script src="../yummy-master/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="../yummy-master/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap-4 js -->
	<script src="../yummy-master/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins JS -->
	<script src="../yummy-master/js/others/plugins.js"></script>
	<!-- Active JS -->
	<script src="../yummy-master/js/active.js"></script>
</body>