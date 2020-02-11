<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
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
		pop = window.open('mypage_search.jsp', 'search',
				'width=400,height=400,location=no,status=no,scrollbars=yes');
	}
</script>
</head>

<body>

	<%
		ArrayList<BoardVO> list = (ArrayList<BoardVO>) request.getAttribute("list");
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
			<span style="float: left;">즐겨찾는 레시피:<strong>10</strong><span>개</span></span>

			<span style="float: right;">point:<strong>50</strong><span>점</span></span>

		</div>
		<p></p>
		<div>
			<table border="1" class="mypage_table">
				<tr align="center">
					<td></td>
					<td>일요일</td>
					<td>월요일</td>
					<td>화요일</td>
					<td>수요일</td>
					<td>목요일</td>
					<td>금요일</td>
					<td>토요일</td>
				</tr>
				<tr align="center">
					<td scope="row">아침</td>
					<td class="search" onclick="popup()">김치</td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
				</tr>
				<tr align="center">
					<td scope="row">점심</td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()">콩장</td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
				</tr>
				<tr align="center">
					<td scope="row">저녁</td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()"></td>
					<td class="search" onclick="popup()">라면</td>
				</tr>
			</table>
		</div>
		<div style="float: right">
			<input type="button" value="월 전체보기"
				onclick="window.open('mypage_calander.jsp', 'calender','width=850,height=530,location=no,status=no,scrollbars=yes')"
				style="color: white; background-color: #fc6c3f; width: 100px" />
		</div>
		<p></p>


		<div class="container">
			<div class="row">
				<div class="col-lg-3">오늘 섭취한 칼로리</div>
				<div class="col-lg-4">
					<input type="text" value="" />
				</div>
				<div class="col-lg-2">
					<input type="button" id="towrite" value="계산하기" onclick=""
						style="color: white; background-color: #fc6c3f; width: 100px;">
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
	<script type="text/javascript">
		today = new Date();
		mon = (today.getMonth() + 1) + "월"; /* 월은 0부터 시작이라서 더하기 1을 해줘야함. */
		//str = str + today.getDate() + " 일";

		document.write("<table border = '1'>");
		
		document.write("<th>")
		
		for (i = 0; i < 7; i++) {

				str = mon + (today.getDate() + i) + "일"

				document.write("<td>" + str + "</td>");

			}
		
		document.write("</th>")
		
	
		
		for (j = 0; j < 4; j++) {
			document.write("<tr>");
			
			for (i = 0; i < 7; i++) {
				document.write("<td>d</td>");
			}

			document.write("</tr>");
		}
		document.write("</table>");
	</script>




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