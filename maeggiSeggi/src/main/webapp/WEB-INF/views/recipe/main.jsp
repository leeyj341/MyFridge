<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>maeggi saeggi</title>

<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
<style type="text/css">
img {
	width: 300px;
	height: 300px;
	object-fit: cover;
}

h4 {
	margin-left: 13%;
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
	
}
#add {
	width: 90px;
	background-color: white;
	border: solid 1px #f8585b;
	color: #f8585b;
	padding: 9px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	font-weight : bolder;
	margin: 4px;
	cursor: pointer;
	margin-right: 18%;
	float: right;
	border-radius: 10px;
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
								Theme Recipes</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
		<div id="line">
		<div id="headtitle">
			<h4>지금 가장 <span id="underline">HOT</span>한 요리</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="more" value="More">
		</div>
	</div>

	<section class="archive-area">
		<div class="container">
			<div class="row">

				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork1.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 융또융</a>
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
								<h4 class="post-headline">지글지글 맛있는 김치찌개</h4>
							</a>
						</div>
					</div>
				</div>
				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.3s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork2.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 영주영주</a>
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
								<h4 class="post-headline">백종원의 만능고기양념으로 재운 단짠단짠 la 양념갈비</h4>
							</a>
						</div>
					</div>
				</div>


				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.4s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/sandwitch.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 민정민정</a>
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
								<h4 class="post-headline">크리스마스&nbsp;&nbsp;
									파티음식으로&nbsp;&nbsp; 최고!몬테크리스토 샌드위치:)</h4>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section><br/><br/>
	<div id="line">
		<div id="headtitle">
			<h4><span id="underline">비오는 날</span> 이런 음식 어때요?</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="more" value="More">
		</div>
	</div>

	<section class="archive-area">
		<div class="container">
			<div class="row">

				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork1.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 융또융</a>
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
								<h4 class="post-headline">지글지글 맛있는 김치찌개</h4>
							</a>
						</div>
					</div>
				</div>
				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.3s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork2.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 영주영주</a>
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
								<h4 class="post-headline">백종원의 만능고기양념으로 재운 단짠단짠 la 양념갈비</h4>
							</a>
						</div>
					</div>
				</div>


				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.4s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/sandwitch.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 민정민정</a>
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
								<h4 class="post-headline">크리스마스&nbsp;&nbsp;
									파티음식으로&nbsp;&nbsp; 최고!몬테크리스토 샌드위치:)</h4>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><br/><br/>
	<div id="line">
		<div id="headtitle">
			<h4><span id="underline">숙취</span>에는 이런 음식 어때요?</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="more" value="More">
		</div>
	</div>
	<section class="archive-area">
		<div class="container">
			<div class="row">

				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork1.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 융또융</a>
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
								<h4 class="post-headline">지글지글 맛있는 김치찌개</h4>
							</a>
						</div>
					</div>
				</div>
				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.3s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork2.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 영주영주</a>
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
								<h4 class="post-headline">백종원의 만능고기양념으로 재운 단짠단짠 la 양념갈비</h4>
							</a>
						</div>
					</div>
				</div>


				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.4s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/sandwitch.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 민정민정</a>
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
								<h4 class="post-headline">크리스마스&nbsp;&nbsp;
									파티음식으로&nbsp;&nbsp; 최고!몬테크리스토 샌드위치:)</h4>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br />
	<br />
	<div id="line">
		<div id="headtitle">
			<h4><span id="underline">피로에 지친날</span> 이런 음식 어때요?</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="more" value="More">
		</div>
	</div>
	<section class="archive-area">
		<div class="container">
			<div class="row">

				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork1.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 융또융</a>
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
								<h4 class="post-headline">지글지글 맛있는 김치찌개</h4>
							</a>
						</div>
					</div>
				</div>
				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.3s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src=../images/pork2.PNG " alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 영주영주</a>
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
								<h4 class="post-headline">백종원의 만능고기양념으로 재운 단짠단짠 la 양념갈비</h4>
							</a>
						</div>
					</div>
				</div>
						<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.4s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/sandwitch.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 민정민정</a>
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
								<h4 class="post-headline">크리스마스&nbsp;&nbsp;
									파티음식으로&nbsp;&nbsp; 최고!몬테크리스토 샌드위치:)</h4>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br />
	<br />

	<div id="line">
		<div id="headtitle">
			<h4>오래 앉아있는 <span id="underline">수험생,직장인들</span> 이런 음식 어때요?</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="more" value="More">
		</div>
	</div>
	<section class="archive-area">
		<div class="container">
			<div class="row">

				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/pork1.PNG" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 융또융</a>
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
								<h4 class="post-headline">지글지글 맛있는 김치찌개</h4>
							</a>
						</div>
					</div>
				</div>
				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.3s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src=../images/pork2.PNG " alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 영주영주</a>
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
								<h4 class="post-headline">백종원의 만능고기양념으로 재운 단짠단짠 la 양념갈비</h4>
							</a>
						</div>
					</div>
				</div>


				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.4s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="../images/sandwitch.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">By 민정민정</a>
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
								<h4 class="post-headline">크리스마스&nbsp;&nbsp;
									파티음식으로&nbsp;&nbsp; 최고!몬테크리스토 샌드위치:)</h4>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>