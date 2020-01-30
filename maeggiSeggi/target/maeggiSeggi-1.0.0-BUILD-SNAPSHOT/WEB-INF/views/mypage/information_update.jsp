<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Yummy Blog - Food Blog Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

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
                                <li class="nav-item active">
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
                                <li class="nav-item">
                                    <a class="nav-link" href="#">RESTAURANT</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="mypage_main.jsp">MY PAGE</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="recipe_favorite.jsp">즐겨찾는</a>
                                        <a class="dropdown-item" href="mypoint.jsp">나의 포인트</a>
                                        <a class="dropdown-item" href="information_update.jsp">나의 정보 수정</a>
                                        <a class="dropdown-item" href="ask.jsp">1:1 문의사항</a>
                                    </div>
                                    
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
    <div class="breadcumb-area" style="background-image: url(img/bg-img/breadcumb.jpg);z-index: 0">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>정보수정</h2>
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
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">MyPage</li>
                            <li class="breadcrumb-item active" aria-current="page">나의 정보수정</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->
	
	<!-- information_update area start -->
	<div style="margin-left: auto; margin-right: auto; width: 60%; position: relative; left: 20%">
			<fieldset >
				<div class="">
					<div class="">
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="id" class="" type="text" disabled="disabled" placeholder="아이디"/>
								</div>
							</div>
							<p class="" style="display: none;"></p>
						</div>
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="" class="" type="password" placeholder="비밀번호">
									<span class="" style="display: none;"></span>
								</div>
							</div>
							<p class="" style="display: none;"></p>
						</div>
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="" class="" type="password" placeholder="비밀번호 확인"/>
									<span class=""></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="">
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="" class="" type="text" disabled="disabled" placeholder="이름"/>
								</div>
							</div>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								<div class="year">
									<div class="">
										
										<div>
											<span class="">
												<input name="" class="" type="text" maxlength="6" disabled="disabled" placeholder="주민번호 앞자리"/>
											</span>
											<span>-</span>
											<span>
												<input name="" class="" type="text" maxlength="7" disabled="disabled" placeholder="주민번호 뒷자리"/>
											</span>
										</div>
									</div>
								</div>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="">
						<input name="gender" class="" type="radio" value="male"/>
						<label>남자</label>
					</div>
					<div class="">
						<input name="gender" class="" type="radio" value="female"/>
						<label>여자</label>
					</div>
					<p></p>
				</div>
				<p class="" style="display: none;">필수정보입니다.</p>
				<div class="">
					<div class="">
						<div class="">
							<div class="mypage_info_texts">
								
								<div class="">
									<span class="">
										<select name="selectPhone" title="휴대폰 앞 3자리" class="">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
									</span>
									<span class="num">
										<input name="inputPhone" class="" type="tel" maxlength="8" placeholder="휴대폰 번호 (숫자만)"/>
									</span>
								</div>
							</div>
							<p class="" style="display: none;"></p>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								<div class="">
									<div class="">
										
									</div>
									<span class="">
										<input name="" class="" type="text" placeholder="이메일"/>
									</span>
									<span class="">@</span>
									<span class="">
										<input name="" class="" type="text" placeholder="직접입력"/>
									</span>
									<select name="selectEmail" title="" class="">
										<option value="naver.com">naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="nate.com">nate.com</option>
										<option value="google.com">google.com</option>
									</select>
									
								</div>
							</div>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								
								<div class="">
									<input name="inputHeight" class="" type="text" maxlength="3" placeholder="키(cm)"/>
								</div>
							</div>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								
								<div class="">
									<input name="inputWeight" class="" type="text" maxlength="3" placeholder="몸무게(kg)"/>
								</div>
							</div>
						</div>
						<p></p>
						<div>
							<input type="button" value="수정 완료" onclick="alert('수정을 완료했습니다.');location.href='mypage_main.jsp'" style="color:white; background-color: #fc6c3f; width: 100px"/>
							<input type="button" value="수정 취소" onclick="alert('수정을 취소했습니다.');location.href='mypage_main.jsp'" style="color:white; background-color: #fc6c3f; width: 100px"/>
						</div>
					</div>
				</div>
			</fieldset>
		</div>
	<!-- information_update area end -->
	
    

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
                            <a href="index.html" class="yummy-logo">Maeggi Seggi</a>
                        </div>
                        <!-- Menu Area Start -->
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">MY FRIDGE<span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">ABOUT US</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RECIPE</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RESTAURANT</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="mypage_main.jsp">MY PAGE</a>
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
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>
</body>
