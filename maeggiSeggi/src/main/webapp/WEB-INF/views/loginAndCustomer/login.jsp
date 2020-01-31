<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
	
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>로그인 페이지</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="../../yummy-master/style.css" rel="stylesheet">
<link href="../css/loginmain_css.css" rel="stylesheet">

<!-- font -->
<link href="../../common/css/fonts.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="../../yummy-master/css/responsive/responsive.css"
	rel="stylesheet">
	

<style type="text/css">
#socialLogin_box, #top3title,#loginbutton,h4{
font-family: dohyeon;
}


</style>	
	

</head>

<body>
		<!-- top " -->

	<tiles:insertAttribute name="top"></tiles:insertAttribute>



	
		<div class="container">

			<!-- 여기부터  로그인 컨텐츠-->
			<div id="outter">


				<div id="right_inner">
					<form>
						<div id="login_box">
							<h2>Member Login</h2>
							<ul id="input_button">
								<li id="id_pass">
									<ul>
										<li class="logintext" id="ID"><div class="logintext_div">
												<input type="text" class="input_logintext"
													placeholder=' 아이디'>
											</div></li>
										<!-- id -->
										<li class="logintext" id="pass"><div
												class="logintext_div">
												<input type="password" class="input_logintext"
													placeholder=' 비밀번호'>
											</div></li>
										<!-- pass -->
									</ul>
								</li>
								<li>
									<button id="loginbutton">로그인</button>
								</li>
							</ul>
							<ul id="joinAndsearch">
								<li><a href="/maeggiSeggi/logintojoin.do">[회원가입]</a></li>
								<li>[아이디/비밀번호 찾기]</li>
							</ul>
						</div>
						<!-- login_box -->
						<div id="notmember_box">비회원으로 이용하기</div>
						<div id="socialLogin_box">
							소셜 로그인
							<li id="socialList">
								<ul>
									<li><input type="button" class="socialbutton" id="social1"
										value="NAVER로 로그인"></li>

									<li><input type="button" class="socialbutton" id="social2"
										value="KAKAO로 로그인"></li>

									<li><input type="button" class="socialbutton" id="social3"
										value="Google로 로그인"></li>

								</ul>
							</li>

						</div>
					</form>
				</div>

			</div>

			<div id="top3title">이번 주 조회 수 top3 레시피</div>
			<div class="row">

				<!-- Single Post -->

				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../../yummy-master/img/blog-img/2.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">연어공주</a>
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
							<a href="#">
								<h4 class="post-headline">연어 샌드위치</h4>
							</a>
						</div>
					</div>
				</div>



				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.6s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../../yummy-master/img/blog-img/3.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">쁘띠공주</a>
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
							<a href="#">
								<h4 class="post-headline">든든한 한끼~ 소고기 국수</h4>
							</a>
						</div>
					</div>
				</div>



				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.7s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../../yummy-master/img/blog-img/4.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">zl존법사</a>
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
							
								<h4>제철음식, 굴 카나페</h4>
						
						</div>
					</div>
				</div>



				<!-- 기업광고  -->
				<div class="col-12">
					<div class="single-post wow fadeInUp" data-wow-delay="1.2s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<a href="http://www.ssg.com"><img
								src="../../yummy-master/img/blog-img/5.jpg" alt=""></a>
						</div>

						
							<h4>위 사진은 기업 광고 사진이 올라오는 곳입니다.</h4>
						
					</div>
				</div>
			</div>
</div>

<!-- bottom -->	
		<tiles:insertAttribute name="bottom"></tiles:insertAttribute>


</body>