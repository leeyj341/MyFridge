<%@page import="maeggi.seggi.mealPlanner.mealPlannerVO"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@ page import="java.util.*, java.text.*"%>
<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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
<title>식단 관리</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">
<script type="text/javascript">
	function popup() {
		pop = window.open('maeggiSeggi.mypage_search.jsp', 'search',
				'width=400,height=400,location=no,status=no,scrollbars=yes');
	}
</script>


<style type="text/css">
#mealplannerid {
	text-align: center;
	width: 700px;
	margin-top : 50px;
}

#mealplannerid th {
	text-align: center;
	
}
</style>

</head>

<body>

	<%
		List<mealPlannerVO> mealplan = (List<mealPlannerVO>) request.getAttribute("mealplan");
		memberVO loginuser = (memberVO) session.getAttribute("member");
	%>
	<%-- <%
		if (session.getAttribute("id") != null) { //로그인 된 유저만 접근 가능
	%> --%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>MyPage</h2>
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
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">MyPage</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->

	<!-- mypage main area start -->
	<div class="mypage_main">
		<div class="mypage_one">

			<span style="float: right;">point:<strong><%=request.getAttribute("pointsum")%></strong><span>점</span></span>

		</div>
		<p></p>
<<<<<<< HEAD

		<%-- <table border="1" class="mypage_table">
=======
		
	<% 
		Calendar today = Calendar.getInstance();
		int month = today.get(Calendar.MONTH)+1;
		int date = today.get(Calendar.DATE);
	%>
	<script type="text/javascript">
		<%-- <% for(int i = 0; i<mealplan.size();i++){
			
		}
		%> --%>
		$(document).ready(function(){
			
		
			$('.dd').text('1');
		
		});
		
	
	</script>
		<div>
			<table border="1" class="mypage_table">
				<tr>
					<td></td>
					<% for(int k = 0; k<7;k++){
						int aa = date+k;
					%>
						<td align="center"><%= month %>월 <%= aa %> 일</td>	
					<% }%>
				</tr>
				<tr>
				<td>아침</td>
				<td><p class="dd"></p></td>
>>>>>>> refs/remotes/origin/master
				<td></td>
<<<<<<< HEAD
				<% for(int k = 0; k<7;k++){
					int aa = date+k;
				%>
					<td align="center"><%= month %>월 <%= aa %> 일</td>	
				<% }%>
				
			</table> --%>

		<%
			Calendar today = Calendar.getInstance();
			int month = today.get(Calendar.MONTH) + 1;
			int date = today.get(Calendar.DATE);
		%>

		<div>
			



			<div class="row">
				<div class="col-12" id="asklist_customview">

					<div id="mealdiv">
					
					<h3>Weekly Meal Planner</h3>
						<table class="table table-striped" id="mealplannerid">
  							<thead class="thead-dark">
							<tr>
							<th>먹을 날짜</th>
							<th>먹을 시간</th>
							<th>이름</th>
							<th>kCal</th>
							
							</tr>
							</thead>

							<%
								for (int i = 0; i < mealplan.size(); i++) {
									mealPlannerVO meal = mealplan.get(i);
							%>
							<tr>

								<td><%=meal.getPlanner_date()%></td>
								<td><% if(meal.getPlanner_code()==1){
									out.println("아침");
								}else if(meal.getPlanner_code()==2){
									out.println("점심");
								}else{
									out.println("저녁");
								}%></td>
								<td><%=meal.getMeal_name()%></td>
								<td><%=meal.getKcal()%></td>

								<%
									}
								%>
							</tr>

						</table>

						<br/><br/><br/>
						
						<h3>kcal, Exercise (0.1분 = 6초)</h3>
						<h4></h4>
				<%-- <%! 
					double walkmin;
					double runmin;
					double bicyclemin;
					
					
				%> --%>
				<% 
						 int kcalsum= (int)request.getAttribute("kcalsum");
							double walkmin=0;
							double runmin=0;
							double bicyclemin=0;
				 		
				 		
							
					    if( loginuser.getGender().equals("male") && 100<= kcalsum){						 						 
						 walkmin = ((kcalsum-2600)/(2.9*17.5*loginuser.getWeight()));
						 runmin = ((kcalsum-2600)/(8*17.5*loginuser.getWeight()));
						 bicyclemin = ((kcalsum-2600)/(4*17.5*loginuser.getWeight()));
					}else if(loginuser.getGender().equals("female") && 100<=kcalsum){
						 walkmin = ((kcalsum-50)/(2.9*17.5*loginuser.getWeight()));
						 runmin = ((kcalsum-50)/(8*17.5*loginuser.getWeight()));
						 bicyclemin = ((kcalsum-50)/(4*17.5*loginuser.getWeight()));
					}     
				%>
		
						
						
						
						<table class="table table-striped" id="mealplannerid">
  							<thead class="thead-dark">
							<tr>
							<th>오늘 섭취한 칼로리</th>
							<th>걷기</th>
							<th>달리기</th>
							<th>자전거</th>
							</tr>
							</thead>
					
						    <tr>
								<th><%=request.getAttribute("kcalsum")%>kcal</th>
								<th><%= Math.round(walkmin*10)/10.0%>분</th>
								<th><%= Math.round(runmin*10)/10.0 %>분</th>
								<th><%= Math.round(bicyclemin*10)/10.0 %>분</th>
							</tr> 
						</table>



					</div>
				</div>
			</div>



=======
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				</tr>
				<tr>
					<td>점심</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>저녁</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
>>>>>>> refs/remotes/origin/master
		</div>
		<!-- <div style="float: right">
			<input type="button" value="월 전체보기"
				onclick="window.open('mypage_calander.jsp', 'calender','width=850,height=530,location=no,status=no,scrollbars=yes')"
				style="color: white; background-color: #fc6c3f; width: 100px" />
		</div> -->
		<p></p>
<<<<<<< HEAD

=======
		
>>>>>>> refs/remotes/origin/master
		<%-- <% 
			int kcal = 0;	
			for(int i =0; i<3; i++){
			mealPlannerVO todayKcal = mealplan.get(i); 
			kcal = kcal + todayKcal.getKcal();
<<<<<<< HEAD
			
		}%> --%>

=======
		}%> --%>
		
		<div class="container">
			<div class="row">
				<div class="col-lg-3">오늘 섭취한 칼로리</div>
				<div class="col-lg-4">
					<span></span>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3" style="text-align: center;">걷기</div>
				<div class="col-lg-1" style="text-align: center;">
					<span>50</span>분
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3" style="text-align: center;">뛰기</div>
				<div class="col-lg-1" style="text-align: center;">
					<span>20</span>분
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3" style="text-align: center;">자전거</div>
				<div class="col-lg-1" style="text-align: center;">
					<span>30</span>분
				</div>
			</div>
		</div>
>>>>>>> refs/remotes/origin/master
	</div>
	<p></p>




	<%-- <table border=1 align="center">
<%

	"<th>"
	for(int k = 0; k<7;k++){
	}
    for(int i=0; i<=2; i++) {
%>
    <%= ""<tr> %>
    <%= "<th></th>" %>
    <% for(int j=0; j<=6; j++) { %>
        <%= "<td align=center>" + j + "x" + i + "=" + j*i + "</td>" %>
        <%  
        }
    %>
    <%= "</tr>" %>
<% } %>
</table> --%>
	<!-- mypage main area end -->

	<!-- 로그인 안 된 유저일 때 -->
	<%-- <%
		} else {
	%>

	<script type="text/javascript">
		alert("로그인이 필요한 기능입니다!");
		document.location.href = "/maeggiSeggi/loginandcustomer/login.do";
	</script>
	<%
		}
	%>
 --%>

</body>