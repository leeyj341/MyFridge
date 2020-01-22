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
<title>maeggi saeggi</title>

<!-- Favicon -->
<link rel="icon" href="../../yummy-master/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="../../yummy-master/style.css" rel="stylesheet">
<link href="../../css/common/fonts.css" rel="stylesheet">

<!--  <!-- Responsive CSS -->
<link href="../../yummy-master/css/responsive/responsive.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style type="text/css">
img {
	width: 250px;
	height: 250px;
	object-fit: cover;
}

h4 {
	font-family: PapyrusB;
	font-size: 30pt;
	text-align: justify;
}

#more {
	width: 80px;
	background-color: #f8585b;
	border: none;
	color: #fff;
	padding: 10px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px;
	cursor: pointer;
	float: right;
	border-radius: 10px;
	margin-right: 260px;
}

#underline {
	color: skyblue;
}

li {
	display: inline;
	margin-right: 20px;
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
											class="dropdown-item" href="theme_recipe.html"><b>�׸���
												��������ȸ</b></a> <a class="dropdown-item" href="level_recipe.html"><b>���̵���
												������ ��ȸ</b></a> <a class="dropdown-item" href="search_recipe.html"><b>������
												�˻�</b></a>
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
	<!-- ****** Header Area End ****** -->
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">RECIPE</li>
							<li class="breadcrumb-item active" aria-current="page">
								Recipe Details</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-4">
				<div class="post-thumb">
					<img src="../../images/pork1.PNG" alt="">
				</div>
				<!-- Post Content -->
				<div class="post-content">
					<div class="post-meta d-flex">
						<div class="post-author-date-area d-flex">
							<!-- Post Author -->
							<div class="post-author">
								<a href="#">By ������</a>
							</div>
							<!-- Post Date -->
							<div class="post-date">
								<a href="#">May 19, 2017</a>
							</div>
						</div>
						<!-- Post Comment & Share Area -->
						<div class="post-comment-share-area d-flex">
							<!-- Post Favourite -->
							<div class="post-favourite">
								<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
									10</a>
							</div>
							<!-- Post Comments -->
							<div class="post-comments">
								<a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>
									12</a>
							</div>
							<!-- Post Share -->
							<div class="post-share">
								<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<div >
						<div>
							<h4>�丮 ���� �Ұ�</h4>
							<div style="font-family: PapyrusB; font-size: 15pt;">
								
								<div>
									<span>���ۺ��� ���ִ� ��ġ�</span><br/>
									<span>Į�θ� :</span> <strong>310</strong> <span>kcal</span>
								</div>
							</div>
						</div>


						<div style="font-family: PapyrusB; font-size: 15pt;">
							<h4>���</h4>
							<ul>
								<li>��ġ <strong>0.5</strong> <span> ��</span>
								</li>
								<li>�κ� <strong>1</strong> <span> ��</span>
								</li>
								<li><br /> ���� <strong>0.5</strong> <span> ��</span></li>
								<li>���� <strong>1</strong> <span> ��</span>
								</li>
							</ul>
						</div>
					</div>

					<hr class="d-sm-none">
					
				</div>
			</div>

			<div class="col-sm-8">
				<h4>�丮 ����</h4>
	<div>
				<div class="post-thumb">
					<img src="../../yummy-img/img/blog-img/1.jpg" alt="">
				</div>
			<p>��ġ�� 1/4���⸦ �غ��� �Ա� ���� ����ְ�</p>
		<div>
			<img alt="" src="../images/jjigae.jpg" width="200" height="200">
		</div>	
			<p>���Ĵ� �ۼ� ���, ���Ĵ� ä ����ּ���.<br/>
					�����ϰ� ��÷��� û����߸� �Բ� �־ �ȴ�ϴ�.</p>
	</div>
	<fieldset>
		<legend>������ �ı�</legend>
			<div>
			<span>��ü </span>
			<strong>20</strong>
			<span>��</span>
			<input type="button" value="��� ����">
			</div>
	</fieldset>
	<table summary="��ȣ,����,�۾���,����Ϸ� ������ �Խ���">
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>�۾���</th>
			<th>�����</th>
		</tr>
		<tr>
			<td>1</td>
			<td>�ʹ��ʹ� ���־��</td>
			<td>�丮��Ŵ��</td>
			<td>20-01-10</td>
		</tr>
		<tr>
			<td>2</td>
			<td>���̶� ������ �丮�� ��ǰ</td>
			<td>�����</td>
			<td>20-01-14</td>
		</tr>
	</table>
	<br/>
	<fieldset>
		<legend>���</legend>
			<div>
			<span>��ü </span>
			<strong>20</strong>
			<span>��</span>
			<input type="button" value="��� ����">
			</div>
	</fieldset>
	<table summary="��ȣ,����,�۾���,����Ϸ� ������ �Խ���">
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>�۾���</th>
			<th>�����</th>
		</tr>
		<tr>
			<td>1</td>
			<td>�ʹ��ʹ� ���־��</td>
			<td>�丮��Ŵ��</td>
			<td>20-01-10</td>
		</tr>
		<tr>
			<td>2</td>
			<td>���̶� ������ �丮�� ��ǰ</td>
			<td>�����</td>
			<td>20-01-14</td>
		</tr>
	</table>
	<br/>
		<div>
			<h3>���� ������ ��õ</h3>
				<input type="button" value="������" >
		</div>
			</div>
		</div>
	</div>



	<footer class="footer_area">
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