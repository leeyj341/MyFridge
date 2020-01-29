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
<title>Yummy Blog - Food Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="../../yummy-master/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="../../yummy-master/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="../../yummy-master/css/responsive/responsive.css" rel="stylesheet">
<style type="text/css">
.jumbotron{
 padding: 30px 15px;
  margin-bottom: 30px;
  color: inherit;
  background-color:#fdd7c8;
}
.font {
	font-family: PapyrusB;
	font-size: 30pt;
	text-align: justify;
}
</style>
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
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                    </div>
                </div>
                <!--  Login Register Area -->
                <div class="col-7 col-sm-6">
                    <div class="signup-search-area d-flex align-items-center justify-content-end">
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
                            <a class="searchBtn" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                        </div>
                        <!-- Search Form -->
                        <div class="search-hidden-form">
                            <form action="#" method="get">
                                <input type="search" name="search" id="search-anything" placeholder="Search Anything...">
                                <input type="submit" value="" class="d-none">
                                <span class="searchBtn"><i class="fa fa-times" aria-hidden="true"></i></span>
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
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-nav" aria-controls="yummyfood-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                        <!-- Menu Area Start -->
                        <div class="collapse navbar-collapse justify-content-center" id="yummyfood-nav">
                            <ul class="navbar-nav" id="yummy-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">MY FRIDGE<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="yummyDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ABOUT US</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="index.html"></a>
                                        <a class="dropdown-item" href="archive.html">INTRO</a>
                                        <a class="dropdown-item" href="single.html">GRADE</a>
                                        <a class="dropdown-item" href="static.html">QnA</a>
                                        <a class="dropdown-item" href="contact.html">CONTACT</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">RECIPE</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">RESTAURANT</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="archive.html">MY PAGE</a>
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
    </header>
    <!-- ****** Header Area End ****** -->

	<!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" style="background-image: url(images/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>RESTAURANT PAGE</h2>
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
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> MY FRIDGE</a></li>
                            <li class="breadcrumb-item active" aria-current="page">RESTAURANT PAGE</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->

    <!-- ****** Archive Area Start ****** -->
    <section class="archive-area section_padding_80">
        <div class="container">
            <div class="row">

                <!-- Single Post -->
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="single-post wow fadeInUp" data-wow-delay="0.1s">
                        <!-- Post Thumb -->
                        <div class="post-thumb">
                            <img src="images/res1.jpg" alt="" height="400" width="550">
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-meta d-flex">
                                <div class="post-author-date-area d-flex">
                                    <!-- Post Author -->
                                    <div class="post-author">
                                        <a href="#">식당1</a>
                                    </div>
                                    <!-- Post Date -->
                                    <div class="post-date">
                                        <a href="#">위치 : 역삼동</a>
                                    </div>
                                </div>
                                <!-- Post Comment & Share Area -->
                                <div class="post-comment-share-area d-flex">
                                    <!-- Post Favourite -->
                                    <div class="post-favourite">
                                        <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                    </div>
                                    <!-- Post Comments -->
                                    <div class="post-comments">
                                        <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                    </div>
                                    <!-- Post Share -->
                                    <div class="post-share">
                                        <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Post -->
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="single-post wow fadeInUp" data-wow-delay="0.2s">
                        <!-- Post Thumb -->
                        <div class="post-thumb">
                            <h3 class="font">식당1</h3>
                        </div>
                        <div><ul><li><h5 class="post-headline">열탄불고기와 7분돼지김치가 맛있는 새마을 식당만의 특별함</h5></li></ul></div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-meta d-flex">
                                <div class="post-author-date-area d-flex">
                                    <!-- Post Author -->
                                    <div class="post-author">
                              
                                    </div>
                                    <!-- Post Date -->
                                    <div class="post-date">
                                       
                                    </div>
                                </div>
                                <!-- Post Comment & Share Area -->
                                <div class="post-comment-share-area d-flex">
                                    <!-- Post Favourite -->
                                    <div class="post-favourite">
                                        
                                    </div>
                                    <!-- Post Comments -->
                                    <div class="post-comments">
                                        
                                    </div>
                                    <!-- Post Share -->
                                    <div class="post-share">
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="post-thumb">
                        </div>
                        <div><ul>
                        		<li><h5 class="post-headline">업종</h5></li>
                        		<li><h5 class="post-headline">한국음식 > 한정식</h5></li>
                        		<li><h5 class="post-headline">매장소개</h5></li>
                        		<li><h5 class="post-headline">매콤한육수와 닭이 만나서 매콤한 마약닭도리탕과 치즈와 갈비가 만나서 매콤한 매운치즈갈비찜 반반다른맛을 즐기는 반반파불, 그리고 스팸이 김치와두부가 만나 스팸두부김치 등이 있습니다.~^^</h5></li>
                        	</ul>
                        </div>
                        </div>
                    </div>
                </div>
				
				<div class="col-12 col-md-6 col-lg-6">
					<div class="single-post wow fadeInUp" data-wow-delay="0.2s">
						<div class="post-thumb">
                            <img src="images/map2.png" alt="" height="400" width="550">
                        </div>
					</div>
				</div>
				
				<div class="col-12 col-md-6 col-lg-6">
					<div class="single-post wow fadeInUp" data-wow-delay="0.2s">
						<div><ul>
                        		<li><h5 class="post-headline">주소</h5></li>
                        		<li><h5 class="post-headline">서울시 강남구 역삼동 봉은사로 30번지 73 1층</h5></li>
                        		<li><h5 class="post-headline">영업시간</h5></li>
                        		<li><h5 class="post-headline">오전 12:00에 종료</h5></li>
                        		<li><h5 class="post-headline">연락처</h5></li>
                        		<li><h5 class="post-headline">02-568-4942</h5></li>
                        	</ul>
                        </div>
					</div>
				</div>
				
				<!-- Comment Area Start -->
				
				<div class="row">
				<div class="single-post wow fadeInUp" data-wow-delay="0.2s">
				<div class="col-12 none" style="float : left;">
					<h4><span id="underline">3</span> Comments</h4>

					<ol>
						<!-- Single Comment Area -->
						<li class="single_comment_area">
							<div class="comment-wrapper d-flex">
								<!-- Comment Meta -->
								<div class="comment-author">
									<img src="../../yummy-master/img/blog-img/17.jpg" alt="">
								</div>
								<!-- Comment Content -->
								<div class="comment-content">
									<span class="comment-date text-muted">27 Aug 2018</span>
									<h5>Brandon Kelley</h5>
									<p>Neque porro qui squam est, qui dolorem ipsum quia dolor
										sit amet, consectetur, adipisci velit, sed quia non numquam
										eius modi tempora.</p>
									<a href="#">Like</a> <a class="active" href="#">Reply</a>
								</div>
							</div>
							<ol class="children">
								<li class="single_comment_area">
									<div class="comment-wrapper d-flex">
										<!-- Comment Meta -->
										<div class="comment-author">
											<img src="../../yummy-master/img/blog-img/18.jpg" alt="">
										</div>
										<!-- Comment Content -->
										<div class="comment-content">
											<span class="comment-date text-muted">27 Aug 2018</span>
											<h5>Brandon Kelley</h5>
											<p>Neque porro qui squam est, qui dolorem ipsum quia
												dolor sit amet, consectetur, adipisci velit, sed quia non
												numquam eius modi tempora.</p>
											<a href="#">Like</a> <a class="active" href="#">Reply</a>
										</div>
									</div>
								</li>
							</ol>
						</li>
						<li class="single_comment_area">
							<div class="comment-wrapper d-flex">
								<!-- Comment Meta -->
								<div class="comment-author">
									<img src="../../yummy-master/img/blog-img/19.jpg" alt="">
								</div>
								<!-- Comment Content -->
								<div class="comment-content">
									<span class="comment-date text-muted">27 Aug 2018</span>
									<h5>Brandon Kelley</h5>
									<p>Neque porro qui squam est, qui dolorem ipsum quia dolor
										sit amet, consectetur, adipisci velit, sed quia non numquam
										eius modi tempora.</p>
									<a href="#">Like</a> <a class="active" href="#">Reply</a>
								</div>
							</div>
						</li>
					</ol>
				</div>
				</div>
				
				<div class="single-post col-12">
				<div class="single-post wow fadeInUp" data-wow-delay="0.2s">
				<fieldset>
					<h4>
						식당 후기
					</h4>
					<div>
						<span>전체 </span> <strong>20</strong> <span>건</span> 
						<button type="button" class="btn btn-outline-warning btn-sm" style="float:right;margin-bottom: 1%">후기 등록</button>
					</div>
				</fieldset>
				<table class="table table-hover" summary="번호,내용,글쓴이,등록일로 구성된 게시판">
					<thead>
						<tr>
							<th>번호</th>
							<th>내용</th>
							<th>글쓴이</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tr>
						<td>1</td>
						<td>너무너무 맛있어요</td>
						<td>요리지킴이</td>
						<td>20-01-22</td>
					</tr>
					<tr>
						<td>2</td>
						<td>밥이랑 먹으니 요리가 일품</td>
						<td>밥수니</td>
						<td>20-01-18</td>
					</tr>
					<tr>
						<td>3</td>
						<td>혼자 먹기 아쉬운 요리 ㅜㅜ</td>
						<td>자취생</td>
						<td>20-01-14</td>
					</tr>
				</table>
				<br />
			</div>

            </div>
        </div>
    </section>
    <!-- ****** Archive Area End ****** -->

    <!-- ****** Instagram Area Start ****** -->
    <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/2.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/3.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/4.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/5.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/6.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="../images/instagram-img/2.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- ****** Our Creative Portfolio Area End ****** -->

    <!-- ****** Footer Social Icon Area Start ****** -->
    <div class="social_icon_area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-social-area d-flex">
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span>facebook</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twitter</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><span>GOOGLE+</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i><span>linkedin</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i><span>Instagram</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i><span>VIMEO</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i><span>YOUTUBE</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Footer Social Icon Area End ****** -->

    <!-- ****** Footer Menu Area Start ****** -->
    <footer class="footer_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-content">
                        <!-- Logo Area Start -->
                        <div class="footer-logo-area text-center">
                            <a href="index.html" class="yummy-logo">maeggi seggi</a>
                        </div>
                        <!-- Menu Area Start -->
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">MY FRIDGE <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">ABOUT US</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RECIPE</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">RESTAURANT</a>
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
    <!-- ****** Footer Menu Area End ****** -->

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