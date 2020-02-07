<%@page import="maeggi.seggi.recipe.RecipeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Maeggi Seggi</title>

<!-- Favicon -->
<link rel="icon" href="maeggiSeggi/images/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">


<!--Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
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
	<% ArrayList<RecipeVO> list = (ArrayList<RecipeVO>)request.getAttribute("recipeList"); %>
	<br />
	<div class="container" style="margin-top: 30px; font-family: PapyrusM;">
		<div class="row">
			<div class="col-sm-4">
				<h2 class="aside-title">Recipe Search</h2>
				<form action="recipeSearch" method="get">
					<div class="form-group">
						<div class="input-group">
						
							<input type="text" name="search" class="form-control"
								placeholder="�Ż��̱�"
								style="font-size: 20pt;">
							<div class="input-group-btn">
								<input type="button" id="more" name="read" value="��ȸ"> <i
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
						<div id="check">
						<div id="title">����</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="all" checked>All Countries</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="�ѽ�">�ѽ�</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="ǻ��">
								ǻ��</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="����/��Ż����">
								����/��Ż����</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="�߱�/�����ƽþ�">
								�߱� /�����ƽþ�</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="�Ϻ�">
								�Ϻ�</label></div>
							</div>	
						
						
						<br>
						<div id="title">������</div>
						<div class="form-group">
							<label><input type="checkbox" name="sort" checked>All
								Categories</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="sort">���ι���</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="sort">����/����Ʈ</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="sort">��/�/����/��</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="sort">��</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="sort">����/���</label>
						</div>
						<div class="form-group">
							<label><input type="checkbox" name="sort">����/��ä/������</label>
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
						<span id="underline">�Ż��̱�</span> ���� ��ȸ�� ����� 5,200 �� �Դϴ�.
					</div>
				</div>
				<div class="single-post-line">
					<div class="single-post">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do"><img
								src="/maeggiSeggi/images/jjigae.jpg" alt="" /></a>
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
							<a href="/maeggiSeggi/recipe/detailRecipe.do">
								<h6>The Top Breakfast And Brunch Spots In Hove</h6>
							</a>
						</div>
					</div>


					<!-- Single Related Post-->
					<div class="single-post">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do"><img
								src="/maeggiSeggi/images/pork2.PNG" alt="" /></a>
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
							<a href="/maeggiSeggi/recipe/detailRecipe.do">
								<h6>The Top Breakfast And Brunch Spots In Hove</h6>
							</a>
						</div>
					</div>
				</div>
				<!-- Single Related Post-->
				<div class="single-post">
					<!-- Post Thumb -->
					<div class="post-thumb">
						<a href="/maeggiSeggi/recipe/detailRecipe.do"><img
							src="/maeggiSeggi/images/sandwitch.jpg" alt="" /></a>
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
						<a href="/maeggiSeggi/recipe/detailRecipe.do">
							<h6>The Top Breakfast And Brunch Spots In Hove</h6>
						</a>
					</div>
				</div>
				<!-- Single Related Post-->
				<div class="single-post">
					<!-- Post Thumb -->
					<div class="post-thumb">
						<a href="/maeggiSeggi/recipe/detailRecipe.do"><img
							src="/maeggiSeggi/images/1.jpg" alt="" /></a>
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
						<a href="/maeggiSeggi/recipe/detailRecipe.do">
							<h6>The Top Breakfast And Brunch Spots In Hove</h6>
						</a>
					</div>
				</div>
				<div class="single-post">
					<!-- Post Thumb -->
					<div class="post-thumb">
						<a href="/maeggiSeggi/recipe/detailRecipe.do"><img
							src="/maeggiSeggi/images/2.jpg" alt="" /></a>
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
						<a href="/maeggiSeggi/recipe/detailRecipe.do">
							<h6>The Top Breakfast And Brunch Spots In Hove</h6>
						</a>
					</div>
				</div>
				<div class="single-post">
					<!-- Post Thumb -->
					<div class="post-thumb">
						<a href="/maeggiSeggi/recipe/detailRecipe.do"><img
							src="/maeggiSeggi/images/pork1.PNG" alt="" /></a>
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
						<a href="/maeggiSeggi/recipe/detailRecipe.do">
							<h6>The Top Breakfast And Brunch Spots In Hove</h6>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12">

		<nav style="float: right; margin-right: 200px;">
			<ul class="pagination">
				<li class="page-item active"><a class="page-link" href="#">1
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">Next <i
						class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
			</ul>
			<div class="page-status">
				<p>Page 1 of 60 results</p>
			</div>
			<div id="test"></div>
		</nav>

	</div>
	<script type="text/javascript">
	category="${category}";
	$(document).ready(function(){
	  	$("#check>input").each(function() {
	  		$(this).on("click",function(){
	  			category = $(this).text();
	  			$.ajax({
	  				url:"/recipe/ajax_searchRecipe.do",
	  				type:"get",
	  				data:{
	  					"category":category},
	  					
	  					success:function(data){
	  						
	  						mydata="";
	  						
	  						for(i=0;i<data.length;i++){
	  						mydata=mydata+data[i].name;
	  					}
	  					$("#test").append(mydata);
	  				}
	  			})
	  		})
			
		})	
		
	});
	
	</script>
</body>
</html>