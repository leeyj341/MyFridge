<%@page import="maeggi.seggi.mealPlanner.mealPlannerVO"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@ page import="java.util.*, java.text.*"  %>
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

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">
<script type="text/javascript">
	function popup() {
		pop = window.open('maeggiSeggi.mypage_search.jsp', 'search',
				'width=400,height=400,location=no,status=no,scrollbars=yes');
	}
</script>
</head>

<body>

	<%
		List<mealPlannerVO> mealplan = (List<mealPlannerVO>)request.getAttribute("mealplan");
		memberVO loginuser = (memberVO) session.getAttribute("loginuser");
	%>
	<%-- <%
		if (session.getAttribute("id") != null) { //로그인 된 유저만 접근 가능
	%> --%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/bg-img/breadcumb.jpg); z-index: 0">
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
			<span style="float: left;">즐겨찾는 레시피:<strong>10</strong><span>개</span></span><br/>

			<span style="float: right;">point:<strong><%= request.getAttribute("pointsum") %></strong><span>점</span></span>

		</div>
		<p></p>
		
	<% 
		Calendar today = Calendar.getInstance();
		int month = today.get(Calendar.MONTH)+1;
		int date = today.get(Calendar.DATE);
	%>
	
		<div>
			<% for(int i = 0; i<mealplan.size(); i++){ 
				mealPlannerVO meal = mealplan.get(i);
			%>
			<div> <%= meal.getPlanner_date() %> , <%= meal.getPlanner_code() %>,<%= meal.getMeal_name() %> , <%= meal.getKcal() %> </div>
			<% } %>
			<%-- <table border="1" class="mypage_table">
				<td></td>
				<% for(int k = 0; k<7;k++){
					int aa = date+k;
				%>
					<td align="center"><%= month %>월 <%= aa %> 일</td>	
				<% }%>
				
			</table> --%>
		</div>
		<div style="float: right">
			<input type="button" value="월 전체보기"
				onclick="window.open('mypage_calander.jsp', 'calender','width=850,height=530,location=no,status=no,scrollbars=yes')"
				style="color: white; background-color: #fc6c3f; width: 100px" />
		</div>
		<p></p>

		<% mealPlannerVO todayKcal = mealplan.get(0); %>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">오늘 섭취한 칼로리</div>
				<div class="col-lg-4">
					<input type="text" value="<%= todayKcal.getKcal() %>" />
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