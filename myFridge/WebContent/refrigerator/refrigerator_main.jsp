<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>매끼세끼 - 마이 냉장고</title>

    <!-- Favicon -->
    <link rel="icon" href="../yummy-master/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="../yummy-master/style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="../yummy-master/css/responsive/responsive.css" rel="stylesheet">
    <link href="css/refrigerator.css" rel="stylesheet">
    <link href="../common/css/fonts.css" rel="stylesheet">
    

</head>

<body class="bg-amond">
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
    
	
	<!-- ******Refrigerator Area Start ****** -->
	<div class="fridge-area">
		<div class="col-12">
			<!-- ****** Theme Select Area Start ****** -->
			<div class="button-area col-1">
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="../images/harvest.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="../images/ingredients.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="../images/sugar.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="../images/recipe-book.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="../images/picnic.png">
				</button>
			</div>
			<!-- ****** Theme Select Area End ****** -->
			<!-- ****** Ingredient Select Area Start ****** -->
			<div class="refrigerator-area col-5" id="selectIngredientBox">
				<form class="select-wrapper" name="ingrediennt_select_form"
					method="POST" action="">
					<ul class="sort-list">
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
					</ul>
				</form>
			</div>
			<!-- ****** Ingredient Select Area End ****** -->

			<!-- ****** My Fridge Area Select Area End ****** -->
			<div class="refrigerator-area col-5">
				<div class="fridge-wrapper">
					<img id="fridge-image" src="../images/refrigerator.png">
					<!-- 냉장고 div로 배경이미지를 넣거나 border 속성으로 구분.. -->
					<ul class="list-scroll fridge-list">
						<!-- 동적으로 추가되어야 함 -->
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="../images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
					</ul>
				</div>
			</div>

			<!-- ****** My Fridge Area Area End ****** -->
		</div>
	</div>
	<!-- ******Refrigerator Area End ****** -->
	<footer class="footer_area">
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
</html>