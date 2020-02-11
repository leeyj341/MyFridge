<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="maeggi.seggi.recipe.RecipeVO"%>
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



<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- Responsive CSS -->
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="/maeggiSeggi/common/css/recipe_detail.css" rel="stylesheet">

<script type="text/javascript">
	function popup() {
		window
				.open(
						"/maeggiSeggi/recipe/addPlanner.do",
						"�Ĵ� ����",
						"top=100, left=450, width=700, height=450, status=no, menubar=no, toolbar=no, resizable=no");

	}
</script>
</head>
<body>

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
	<%
		ArrayList<HashMap<String, String>> listMap = (ArrayList<HashMap<String, String>>) request.getAttribute("detail");
	%>

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-4">
				<div>
					<h4><%=listMap.get(0).get("NAME")%></h4>
					<div class="post-thumb">
						<img src="<%=listMap.get(0).get("IMG_URL_MAIN")%>" alt="">
					</div>
					<br/>
					<!-- Post Content -->

					<div class="post-content">
						<div class="post-meta d-flex">
							<div class="post-author-date-area d-flex">
								<!-- Post Author -->
								<div class="post-author">
									<a href="#">�ۼ��� : <%=listMap.get(0).get("MEMBER_ID")%></a>
								</div>
								<!-- Post Date -->
								<div class="post-date"> 
								<%!SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
								
								%>
									<a href="#">REGISTER: <%=sdFormat.format(listMap.get(0).get("REGISTER_DATE"))%></a>
								</div>
								
							</div>
							</div>
							<!-- Post Comment & Share Area -->
							<div style="float:left;">
								<!-- Post Favourite -->
								<div class="post-favourite">
									<a href="#"><i class="fas fa-heart" aria-hidden="true"></i>
										<%=String.valueOf(listMap.get(0).get("LIKE_NUM"))%></a>
								
								<!-- Post Comments -->
								
									<a href="#"><i class="far fa-comment" aria-hidden="true"></i>
										12</a>
								
								<!-- Post Share -->
								
									<a href="#"><i class="far fa-smile" aria-hidden="true"></i>
										<%=String.valueOf(listMap.get(0).get("HIT"))%></a>
								
								&nbsp;&nbsp;
								
									<a href="#"><i class="fas fa-share-alt" aria-hidden="true"></i>&nbsp;2</a>
								</div>
							</div>
						</div>
						
					</div>

					<div class="jumbotron">
						<div style="font-family: nanumSquare_acEB; font-size: 12pt;text-align: justify;">
							<h4>�丮 ���� �Ұ�</h4>
							<span>"<%=listMap.get(0).get("CONTENT_INTRO")%>"</span><br/><br/> 
							<div>

								<div>
									<span><strong>THEME :</strong></span><span><%=listMap.get(0).get("RECIPE_CATEGORY")%></span>&ensp;<br/>
									<span><strong>CATEGORY :</strong></span><span><%=listMap.get(0).get("FOOD_CATEGORY")%></span><br/>
									
									<span><strong>���� �ð� :</strong></span><span><%=String.valueOf(listMap.get(0).get("COOK_TIME"))%>��</span>&ensp;
								<form name="myform" >
									<span><strong>Į�θ�:</strong></span> <%=String.valueOf(listMap.get(0).get("KCAL"))%><span>kcal</span><br/>
									
								</form>
									<span><strong>�κ� :</strong></span><span><%=String.valueOf(listMap.get(0).get("AMOUNT_PER_PERSON"))%>�κ�</span>&ensp;
									<span><strong>���� ���ݴ� :</strong> </span><span><%=String.valueOf(listMap.get(0).get("PRICE"))%>��</span>&ensp;
								</div>
							</div>
						</div>
						<form action="/maeggiSeggi/recipe/addPlanner.do" method="POST">
	
							<input type="hidden" name="recipe_id" value="<%=String.valueOf(listMap.get(0).get("recipe_id"))%>"/>
							
						</form>

						<div style="font-family: nanumSquare_acEB; font-size: 12pt;">
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
			<!-- <form id="myform" method="post" action="/maeggiSeggi/recipe/addPlanner.do" target="popup_window" > -->
		<% if(session.getAttribute("id")!=null){ %>
					<input type="button" id="add" value="�Ĵܿ� �߰��ϱ�" onclick="popup()">
		<% }else{ %>
					<input type="button" id="add" value="�Ĵܿ� �߰��ϱ�" onclick="alert('�α����� �ʿ��� ����Դϴ�.')">
		<% } %>
			<!-- </form> -->
					<hr class="d-sm-none">

				</div>
				
<!-- 	<script type="text/javascript">
		$(document).ready(function(){
		  $("#add").on("click", function(){
		    window.open("", "popup_window", "top=100, left=450, width=700, height=450, status=no, menubar=no, toolbar=no, resizable=no");
		    $("#myform").submit();
		  });
		});
	</script> -->



			<div class="col-sm-8">
				<div class="single-post" style="font-family: nanumSquare_acEB;">
					<h4>�丮 ����</h4>
					<div>
					<ul class="list-group list-group-flush">
					<% for(int i = 0; i < listMap.size(); i++) {
						HashMap<String, String> map = listMap.get(i);
						%>
						
							<li class="list-group-item"><strong><%=String.valueOf(map.get("RECIPE_ORDER_NUM"))%></strong>
								<%=map.get("RECIPE_DESCRIBE") %>
								</li><%} %>
					</ul>
					</div>
				</div>
				<!--������ ���� ����  -->
                  <div class="container">
                  		<h4 class="col-sm-4">���� ����</h4>
                       <div id="demo" class="carousel slide" data-ride="carousel">
                          <div class="carousel-inner"> <!-- �����̵� �� -->
                             
							<% for(int i = 0; i < listMap.size(); i++) {
								HashMap<String, String> map = listMap.get(i);
									if(map.get("IMG_URL")!=null){
										if(i==0){
										%> <div class="carousel-item active">
													 <div class="single-post">
													  <!-- Post Thumb -->
			                                            <img src="<%=map.get("IMG_URL")%>" alt="���� ����">
			                                           	</div>
				                                        <div class="carousel-caption d-none d-md-block">
				                                        	<h5><%=map.get("TIP") %></h5>
													  </div>
												
											</div>
										<%}else{ %> 
											<div class="carousel-item">
		                                    	<div class="single-post">
		                                        <!-- Post Thumb -->
		                                            <img src="<%=map.get("IMG_URL")%>" alt="���� ����">
		                                           </div> 
			                                        <div class="carousel-caption d-none d-md-block">
			                                        	<h5><%=map.get("TIP") %></h5>
													</div>
		                                    </div>
		                                  
		                                    <%
		                                    }
										}
									}%>
                                 <!-- / �����̵� �� �� -->
                                  <!-- ���� ������ ȭ��ǥ ��ư -->
                                   <a class="carousel-control-prev" href="#demo" data-slide="prev"> 
                                   		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                   	</a>
                                    <a class="carousel-control-next" href="#demo" data-slide="next">
										<span class="carousel-control-next-icon" aria-hidden="true"></span>
									</a> 
                                    <!-- / ȭ��ǥ ��ư �� --> 
                                    <!-- �ε������� --> 
                                    <ul class="carousel-indicators">
                                    	 <li data-target="#demo" data-slide-to="0" class="active"></li> 
                                    	 <li data-target="#demo" data-slide-to="1"></li>
	                                      <li data-target="#demo" data-slide-to="2"></li>
	                                </ul> <!-- �ε������� �� -->
	                       </div>
					</div>
			</div>
		<!-- Comment Area Start -->

		<div class="row">
			<div class="col-12 none" style="float: left;">
				<h4>
					<span id="underline">3</span> ���
				</h4>

				<ol>
					<!-- Single Comment Area -->
					<li class="single_comment_area">
						<div class="comment-wrapper d-flex">
							<!-- Comment Meta -->
							<div class="comment-author">
								<img src="/maeggiSeggi/images/blog-img/17.jpg" alt="">
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
										<img src="/maeggiSeggi/images/blog-img/18.jpg" alt="">
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
					</li>
					<li class="single_comment_area">
						<div class="comment-wrapper d-flex">
							<!-- Comment Meta -->
							<div class="comment-author">
								<img src="/maeggiSeggi/images/blog-img/19.jpg" alt="">
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
	</div>
	</div>
		<div class="single-post">
			<fieldset>
				<h4>������ �ı�</h4>
				<div>
					<span>��ü </span> <strong>20</strong> <span>��</span>
					<button type="button" class="btn btn-outline-warning btn-sm"
						style="float: right; margin-bottom: 1%">�ı� ���</button>
				</div>
			</fieldset>
			<table class="table table-hover" summary="��ȣ,����,�۾���,����Ϸ� ������ �Խ���">
				<thead>
					<tr>
						<th>��ȣ</th>
						<th>����</th>
						<th>�۾���</th>
						<th>�����</th>
					</tr>
				</thead>
				<tr>
					<td>1</td>
					<td>�ʹ��ʹ� ���־��</td>
					<td>�丮��Ŵ��</td>
					<td>20-01-22</td>
				</tr>
				<tr>
					<td>2</td>
					<td>���̶� ������ �丮�� ��ǰ</td>
					<td>�����</td>
					<td>20-01-18</td>
				</tr>
				<tr>
					<td>3</td>
					<td>ȥ�� �Ա� �ƽ��� �丮 �̤�</td>
					<td>�����</td>
					<td>20-01-14</td>
				</tr>
			</table>
			<br />
		</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script> 
$('.carousel').carousel({
	interval: 2000 
	//�⺻ 5�� 
	}) 
</script>



</body>
</html>