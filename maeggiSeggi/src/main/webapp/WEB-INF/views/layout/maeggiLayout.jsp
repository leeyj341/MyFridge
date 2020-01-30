<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Title -->
    <title>매끼세끼</title>
</head>
<body>
	<div class="col-12">
		<!-- 이곳에 top화면을 연결하세요" -->
		<tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
	<div class="col-12">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div class="col-12">
		<tiles:insertAttribute name="bottom"></tiles:insertAttribute>
	</div>
	
	
	<!-- Jquery-2.2.4 js -->
    <script src="/maeggiSeggi/common/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/maeggiSeggi/common/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="/maeggiSeggi/common/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="/maeggiSeggi/common/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="/maeggiSeggi/common/js/active.js"></script>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<div class="col-12">
		<!-- 이곳에 top화면을 연결하세요" -->
		<%-- <tiles:insertAttribute name="top"></tiles:insertAttribute> --%>
	</div>
	<div class="col-12">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div class="col-12">
		<%-- <tiles:insertAttribute name="bottom"></tiles:insertAttribute> --%>
	</div>
	
</body>
>>>>>>> refs/remotes/origin/master
</html>