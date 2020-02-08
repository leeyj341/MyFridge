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

<link href="/maeggiSeggi/common/css/recipe_search.css" rel="stylesheet">

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
	<br />
	<div class="container" style="margin-top: 30px; font-family: PapyrusM;">
		<div class="row">
			<div class="col-sm-4">
				<h2 class="aside-title">Recipe Search</h2>
				<form action="recipeSearch" method="get">
					<div class="form-group">
						<div class="input-group">
							<input type="text" name="recipe_search" class="form-control"
								placeholder="�˻�� �Է��ϼ���."
								style="font-size: 20pt;">
							
								<button id="search" name="read" value="�˻�">�˻� <i
									class="ion-search"></i></button>
							
						</div>
<!-- 						<div class="input-group">
							<input type="text" name="recipe_search" class="form-control"
								placeholder="������ �Է��ϼ��� ex) ���� , �"
								style="font-size: 20pt;">
							
								<button id="next" name="read" value="�˻�"> �˻�<i
									class="ion-search"></i></button>
							
						</div> -->
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
						<div id="title">�׸���</div>
						<div class="form-group">
							<label><input type="radio" name="category" id="checkVal" value="all" checked>All</label>
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
						<span id="underline">��ġ</span>�� ��ȸ�� ����� 52 �� �Դϴ�.
					</div>
					<span id="content" >
       				 <c:forEach var="recipe" items="${list}">
       				 <div class="single-post">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=${recipe.recipe_id} ">
								<img src="${recipe.img_url_main}"/>
						    </a>
						</div>
					</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<a hef="/maeggiSeggi/recipe/detailRecipe.do">
	                       				<h6 style="font-family:nanumSquare_acEB;font:arial;">${recipe.name}</h6><br/>
	                       		</a>
					               <div class="post-author-date-area d-flex">
					               		<div class="post-author">
  	                       					<a href='#'>${recipe.member_id}</a>
  	                       				</div>
  	                       					<div class="post-date" >
  	                       						<a href='#'>${recipe.register_date}</a>
  	                       					</div>
  	                       				</div>
  	                       			</div>
  	                       			</div>
					
							 </c:forEach>
					</span>	
				</div>
				</div>
				</div>
			<hr class="d-sm-none">
		</div>

			
<script type="text/javascript">
	var serviceType;

	$(document).ready(function(){
		
		category="${category}";
		
		recipeId="";
  		$("#check input").each(function() {
  			$(this).on("click",function(){
  			
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
	                       					"<h6 style='font-family: nanumSquare_acEB;font:arial;'>"+data[i].name+"</h6><br/>"+
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
<%-- 	category="${category}"; //��Ʈ�ѷ� ��û�ϰ� response�� �� ���� �޾Ƽ� ����
	category="<%= request.getAttribute("category")%>";
	$(document).ready(function() {
		//���ʽ����� ���, category���� ������ all�� ���� 
		if(category==""){
			category="all";
		}
		$("#category").val(category).attr("selected","selected") //���ٰ� ���� �� �������� ����Ǵ� ��.
		$("#category").change(function(){ //���� �� ����Ǵ� ��.
			location.href="/erp/board/list.do?category="+encodeURI($(this).val());
			//this.val()�� �ǵ��ƿ��鼭 �������� 
		});
	}); --%>
	
</script>


</body>
</html>