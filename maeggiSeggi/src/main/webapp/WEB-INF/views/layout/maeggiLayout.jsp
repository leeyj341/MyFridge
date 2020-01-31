<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<!-- Title -->
    <title>매끼세끼</title>
    
    <!-- Core Stylesheet -->
    <link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
    
    <!-- Responsive CSS -->
    <link href="/maeggiSeggi/common/css/responsive/responsive.css" rel="stylesheet">
    <link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
	
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
</head>
<body>
	<div>
		<!-- 이곳에 top화면을 연결하세요" -->
		<tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="bottom"></tiles:insertAttribute>
	</div>
</body>

</html>