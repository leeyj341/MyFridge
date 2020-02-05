<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
​
<head>
​
​
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
​
<!-- Title -->
<title>회원 가입</title>
​
<!-- Favicon -->
<link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">
​
<!-- font -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
​
<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/k_join.css" rel="stylesheet">
​
​
<!-- Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">

​
<script type="text/javascript">
		$(function() {
			$("#alert-success").hide();
			$("#alert-danger").hide();
			$("input").keyup(function() {
				var pass = $("#pass").val();
				var pass_confirm = $("#pass_confirm").val();
				if (pass != "" || pass_confirm != "") {
					if (pass == pass_confirm) {
						$("#alert-success").show();
						$("#alert-danger").hide();
						$("#submit").removeAttr("disabled");
					} else {
						$("#alert-success").hide();
						$("#alert-danger").show();
						$("#submit").attr("disabled", "disabled");
					}
				}
			});
		});
		
		
		$(document).ready(function() {
			//id 중복체크
			$("#member_id").on("keyup",function(){
				$.get("/maeggiSeggi/loginandcustomer/idCheck.do", {"member_id":$("#member_id").val()}, 
						function(data) {						
							$("#checkVal").text(data); 
				}, "text")
				
			});
			
			//핸드폰 번호 수
			$("#phonenum").on("keyup",function(){
				myphone = $("#phonenum").val();
				resultStr ="";//결과 문자열을 저장할 변수
				colour = ""; 
				if(myphone.length != 11){
					resultStr = "핸드폰 번호는 11자리로 입력해야 합니다.";
					colour = "red";
				}else{
					resultStr = "핸드폰 번호 입력완료.";					
					colour = "green";
				}
				//웹페이지에 div태그 내부에 문자열을 추가 -> html()을 이용해도 좋다.
				$("#result_phone").text(resultStr);
				$("#result_phone").css("color",colour);
			});
			
			//주민번호 수
			$("#ssn").on("keyup",function(){
				myssn = $("#ssn").val();
				resultStr ="";//결과 문자열을 저장할 변수
				colour = ""; 
				if(myssn.length != 13){
					resultStr = "주민등록번호는 13자리로 입력해야 합니다.";
					colour = "red";
				}else{
					resultStr = "주민등록번호 입력완료.";					
					colour = "green";
				}
				//웹페이지에 div태그 내부에 문자열을 추가 -> html()을 이용해도 좋다.
				$("#result_ssn").text(resultStr);
				$("#result_ssn").css("color",colour);
			});
			
		});
		</script>
​
</head>
​
<body>
​
	<div id="outter">
​
		<!-- ****** Breadcumb Area Start ****** -->
		<div class="breadcumb-area"
			style="background-image: url(../../yummy-master/img/bg-img/breadcumb.jpg);">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<div class="bradcumb-title text-center">
							<h2>회원 가입</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
​
		<div class="breadcumb-nav">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#"><i
										class="fa fa-home" aria-hidden="true"></i> 회원 가입</a></li>
								<li class="breadcrumb-item active" aria-current="page">정보
									입력</li>
							</ol>
						</nav>
					</div>
				</div>
​
				<div class="row">
					<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
					<div class="col-12" id="asklist_customview">
						<h2>회원 가입 - 정보 입력</h2>
					</div>
				</div>
			</div>
		</div>
​
​
		<div class="container">
			<form action="/maeggiSeggi/loginandcustomer/join.do" method="POST">
				<div class="join_form">
					<label for="id">아이디:</label> 
					<input type="text"
						class="form-control" id="member_id" name="member_id" placeholder="Enter id">
					<span id="checkVal" style="color: red;"></span>
				</div>												
								
				<div class="join_form">
					<label for="pwd">비밀번호:</label> <input type="password"
						class="form-control" id="pass" name="pass" placeholder="Enter password">
​
				</div>
				<div class="join_form">
					<label for="pwd">비밀번호 확인:</label> <input type="text"
						class="form-control" id="pass_confirm" name="pass_cofirm"
						placeholder="Enter password">
					<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
					<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
				</div>
				<div class="join_form">
					<label for="pwd">이름:</label> <input type="text"
						class="form-control" id="name" name="name" placeholder="name">
				</div>
​
​
				<div class="join_form">
					<label for="pwd"> 성별 : </label> <span class="join_form"> <input
						name="gender" id="gender" type="radio" value="male" /> <label>남자</label>
					</span> <span class=""> <input id="gender" name="gender" type="radio"
						value="female" /> <label>여자</label>
					</span>
				</div>
​
				<div class="join_form">
					<label for="pwd"> 핸드폰 번호 : ( - 없이 11자리 숫자만 입력  )</label> <input type="text"
						class="form-control" id="phonenum" name="phonenum" placeholder="예시 : 01012345678">
					<div id="result_phone" style="color: red;"></div>
				</div>
​
				<div class="join_form">
					<label for="pwd"> 주민등록번호 : ( - 없이 13자리 숫자만 입력  )</label> <input type="text"
						class="form-control" id="ssn" name="ssn" placeholder="예시 : 9409152222222">
					<div id="result_ssn" style="color: red;"></div>
				</div>
				
				<div class="join_form">
					<label for="pwd"> 키 : (cm) </label><input type="text"
						class="form-control" id="height" name="height" placeholder="예시: 180">
						
				</div>
				
				<div class="join_form">
					<label for="pwd"> 몸무게 : (kg) </label><input type="text"
						class="form-control" id="weight" name="weight" placeholder="예시: 70">
						
				</div>
				
				
​
				
				<button type="submit" class="btn btn-default" id="submit">Submit</button>
			</form>
		</div>
​
​
	</div>
​
​
</body>