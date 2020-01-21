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
<style type="text/css">
img {
	width: 300px;
	height: 300px;
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

section {
	clear: both;
}
#underline{
color: skyblue;
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
										<a class="dropdown-item" href="#"></a> 
										<a class="dropdown-item" href="theme_recipe.html"><b>테마별 레시피조회</b></a> 
											<a class="dropdown-item" href="level_recipe.html"><b>난이도별 레시피 조회</b></a> 
											<a class="dropdown-item" href="search_recipe.html"><b>레시피	검색</b></a>
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
	<h4>보글보글 맛있는 김치찌개</h4>
	<div>
		<div>
			<span>평점 : </span>
			<span>9.5</span>
			<span>/10</span>
		</div>
		<div>
			<span>좋아요 수 :</span>
				<span>15</span> 
				<a href="#">
					<img src="../images/heart.png" >
				</a>
		</div>
	</div>

	<div>
		<span>등록일 : 2020/01/13</span>
		<span>작성자 : 요리 장인</span>
	</div>
		<img alt="" src="../images/jjigae.jpg" width="200" height="200">
	<div>
		<p>요리 간단 소개</p>
		<p>보글보글 맛있는 김치찌개</p>
		<div>
			<span>칼로리 :</span>
			<strong>310</strong>
			<span>kcal</span>
		</div>
	</div>
	
	
	<div>
		<h4>재료</h4>
			<ul>
				<li>
					김치 
					<strong>0.5</strong>
					<span> 쪽</span>
				</li>
				<li>
					두부
					<strong>1</strong>
					<span> 모</span>
				</li>
				<li>
					양파
					<strong>0.5</strong>
					<span> 개</span>
				</li>
				<li>
					고추
					<strong>1</strong>
					<span> 개</span>
				</li>
			</ul>
	</div>
	
	<h4>요리 순서</h4>
	<div>
		<div>
			<img alt="" src="../images/jjigae.jpg" width="200" height="200">
		</div>
			<p>김치는 1/4포기를 준비해 먹기 좋게 썰어주고</p>
		<div>
			<img alt="" src="../images/jjigae.jpg" width="200" height="200">
		</div>	
			<p>대파는 송송 썰고, 양파는 채 썰어주세요.<br/>
					매콤하게 드시려면 청양고추를 함께 넣어도 된답니다.</p>
	</div>
	<br/>
	<fieldset>
		<legend>레시피 후기</legend>
			<div>
			<span>전체 </span>
			<strong>20</strong>
			<span>건</span>
			<input type="button" value="댓글 쓰기">
			</div>
	</fieldset>
	<table summary="번호,내용,글쓴이,등록일로 구성된 게시판">
		<tr>
			<th>번호</th>
			<th>내용</th>
			<th>글쓴이</th>
			<th>등록일</th>
		</tr>
		<tr>
			<td>1</td>
			<td>너무너무 맛있어요</td>
			<td>요리지킴이</td>
			<td>20-01-10</td>
		</tr>
		<tr>
			<td>2</td>
			<td>밥이랑 먹으니 요리가 일품</td>
			<td>밥수니</td>
			<td>20-01-14</td>
		</tr>
	</table>
	<br/>
	<fieldset>
		<legend>댓글</legend>
			<div>
			<span>전체 </span>
			<strong>20</strong>
			<span>건</span>
			<input type="button" value="댓글 쓰기">
			</div>
	</fieldset>
	<table summary="번호,내용,글쓴이,등록일로 구성된 게시판">
		<tr>
			<th>번호</th>
			<th>내용</th>
			<th>글쓴이</th>
			<th>등록일</th>
		</tr>
		<tr>
			<td>1</td>
			<td>너무너무 맛있어요</td>
			<td>요리지킴이</td>
			<td>20-01-10</td>
		</tr>
		<tr>
			<td>2</td>
			<td>밥이랑 먹으니 요리가 일품</td>
			<td>밥수니</td>
			<td>20-01-14</td>
		</tr>
	</table>
	<br/>
		<div>
			<h3>관련 레시피 추천</h3>
				<input type="button" value="더보기" >
		</div>
		<ul>
			<li>
				<div>
					<a class="thumnail" href=""></a>
					<img alt="recipe" src="../images/pork1.PNG" width="200" height="200/>
					<div class="caption">
					<h4><span>지글지글 돼지구이</span></h4>
					<p>by 윤소윤</p>
				</div>
			</li>
		
			<li>
				<div>
					<a class="thumnail" href=""></a>
					<img alt="recipe" src="../images/pork2.PNG" width="200" height="200/>
					<div class="caption">
					<h4><span>맛있는 LA갈비</span></h4>
					<p>by 이영주</p>
				</div>
			</li>
		
			<li>
				<div>
					<a class="thumnail" href=""></a>
					<img alt="recipe" src="../images/jjigae.jpg" width="200" height="200/>
					<div class="caption">
					<h4><span>보글보글 만두전골</span></h4>
					<p>by 성민재</p>
				</div>
			</li>
		
			<li>
				<div>
					<a class="thumnail" href=""></a>
					<img alt="recipe" src="../images/sandwitch.jpg" width="200" height="200/>
					<div class="caption">
					<h4><span>한입 샌드위치</span></h4>
					<p>by 김민정</p>
				</div>
			</li>
		</ul>
	<div>
		<h4>이 레시피를 </h4>
			<a href="#">
				<span>
					<i>공유하기</i>
				</span>
			</a>
			&nbsp;
			<a href="#">
				<span>
					<i>식단 추가</i>
				</span>
			</a>
			&nbsp;
			<a href="#">
				<span>
					<i>찜하기</i>
				</span>
			</a>
			&nbsp;
			<a href="#">
				<span>
					<i>해먹기 귀찮아요</i>
				</span>
			</a>
	</div>
	<br/><br/>
	<a href="#">
		<span>
			<i>페이지 위로가기</i>
		</span>
	</a>
			<!-- ****** Breadcumb Area End ****** -->
	<input type="button" value="레시피 추가하기">
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
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">MY FRIDGE <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">ABOUT US</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RECIPE</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RESTAURANTS</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">MY PAGE</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">MANAGE</a>
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
                        <p>Copyright @2018 All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
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