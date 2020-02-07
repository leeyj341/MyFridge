<%@page import="maeggi.seggi.recipe.RecipeVO"%>
<%@page import="java.util.ArrayList"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
#img,#content{
	width: 210px;
	height: 210px;
	display: inline;
	margin: 0px 0px 0px;
	float:right;
	position: absolute;
	right:200px;
	
}

/* #img{background:#000; ; width:50px; height:100%; left:50%; top:0; margin-left:-25px;} */

h4 {
	margin-left: 180px;
	font-family: PapyrusM;
	font-size: 30pt;
	text-align: justify;
	float: left;
}

button {
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

.single-post,.post-thumb {
	display: inline-block;
	margin-bottom: 0px;
	
}

.single-post-line {
	overflow-y: auto;
	width: 100%;
	float: left;
}
.post-meta{
justify-content: unset;
}
</style>



<script type="text/javascript">

	$(document).ready(function(){
		
		category="${category}";
		recipeId="";
  		$("#check input").each(function() {
  			$(this).on("change",function(){
  				category = $(this).val();
  				$.ajax({
  					url:"/maeggiSeggi/recipe/ajax_searchRecipe.do",
  					type:"get",
  					data:{
  						"category":category
  						},
  					success:function(data){
  						mydata ="";
  						
  						for (var i = 0; i < data.length; i++) {
  							mydata +=
  								"<div class='single-post'>" +
												"<div class='post-thumb'>" +
													"<a href='/maeggiSeggi/recipe/detailRecipe.do?id=" + data[i].recipe_id + "'>" +
														"<img src='" + data[i].img_url_main + "'/>" +
													"</a>" +
												"</div>" +
											"</div>"+
									"<div class='post-content'>"+
										"<div class='post-meta d-flex'>"+
										"<a hef='/maeggiSeggi/recipe/detailRecipe.do'>"+
	                       					"<h6 style='font-family: nanumSquare_acEB;'>"+data[i].name+"</h6><br/>"+
	                       				"</a>"+
					                		"<div class='post-author-date-area d-flex'>"+
					               				"<div class='post-author'>"+
  	                       							"<a href='#'>"+data[i].member_id+"</a>"+
  	                       						"</div>"+
  	                       						"<div class='post-date' >"+
  	                       							"<a href='#'>"+data[i].register_date+"</a>"+
  	                       						"</div>"+
  	                       					"</div>"+
  	                       				"</div>";
  	                       				
  					              
						}
  						$("#content").empty();
  						$("#content").append(mydata);
  					}
  				});
  			});
  		});
	});
</script>
</head>
<body >
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
				<form action="recipeSearch" method="get">
					<div class="form-group">
						<div class="input-group">
							<input type="text" name="recipe_search" class="form-control"
								placeholder="검색어를 입력하세요."
								style="font-size: 20pt;">
							
								<button id="search" name="read" value="검색">검색 <i
									class="ion-search"></i></button>
							
						</div>
						<div class="input-group">
							<input type="text" name="recipe_search" class="form-control"
								placeholder="종류를 입력하세요 ex) 반찬 , 찌개"
								style="font-size: 20pt;">
							
								<button id="next" name="read" value="검색"> 검색<i
									class="ion-search"></i></button>
							
						</div>
					</div>
				</form>
				<ul>
					<li class="active"><a href="#">All</a></li>
					<li><a href="#">Latest</a></li>
					<li><a href="#">Popular</a></li>
					<li><a href="#">Views</a></li>
				</ul>

				<div class="optionbox">
					<form class="checkbox-group" active="" >
						<div id="check">
						<div id="title">테마별</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="all">All Countries</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="한식">한식</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="퓨전">
								퓨전</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="서양/이탈리아">
								서양/이탈리아</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="중국/동남아시아">
								중국 /동남아시아</label>
						</div>
						<div class="form-group">
							<label><input type="radio" name="category" value="일본">
								일본</label></div>
							</div>	
						<br>
					</form>
				
			</div>
				<hr class="d-sm-none">
			</div>
			<div class="col-sm-8">
				<div style="font-size: 20pt; float:left;width=100%">
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
						<span id="underline">김치</span>로 조회된 결과는 52 개 입니다.
					</div>
						<div>
					<div id="content"></div>
				</div>
				</div>
				
				
				
				
				</div>
			
		</div>
		<hr class="d-sm-none">
	</div>

	
			
<%-- 			<div>
			<c:forEach var="recipe" items="${recipeList}">
			${recipe.name}
			</c:forEach>
			</div> --%>


</body>
</html>