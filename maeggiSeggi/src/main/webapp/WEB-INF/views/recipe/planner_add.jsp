<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@page import="maeggi.seggi.restaurant.RecipePlannerAddVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
<script src="/maeggiSeggi/common/js/jquery/jquery-2.2.4.min.js"></script>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
}
h4 {
	text-align: center;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#myform").submit( function(event){
		event.preventDefault();
	});
	$("#submit").on("click", function() {
		memId = "<%= session.getAttribute("id") %>";
		node = document.createElement("Input");
		node.setAttribute("name", "member_id");
		node.setAttribute("value", memId);
		$("#myform").append(node);
	    
		$.ajax({
			url:"/maeggiSeggi/restaurant/add.do",
			type: "get",
			traditional :true,
			data:$("#myform").serializeArray(),
			success:function(data){
				alert("장바구니 담기 성공");
			}
		});
		$("#myform").children().last().remove();
	});
})
</script>
</head>
<body style="font-family: PapyrusB;">
	<div class="row" style="margin-left: auto; margin-right: auto;">
		<div class="col-sm-6"
			style="background-color: lavender; margin-right: auto; padding: 0px" id="test">
		<form id="myform"  method="post">
			<h4>나에게 없는 재료 체크하기</h4>
			<fieldset style="text-align: center;">
				<h4>재료확인</h4>
				<input type="checkbox" name="addlist[0].ingredient_id" value="195465">양파
					<select name="addlist[0].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select>
				<input type="checkbox" name="addlist[1].ingredient_id" value="195464">계란
					<select name="addlist[1].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select>
				<input type="checkbox" name="addlist[2].ingredient_id" value="195463">오이
					<select name="addlist[2].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select>
				<input type="checkbox" name="addlist[3].ingredient_id" value="195462">돼지고기
					<select name="addlist[3].ig_unit">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1근</option>
						<option value="2">2근</option>
						<option value="3">3근</option>
					</select>
				<input type="checkbox" name="addlist[4].ingredient_id" value="195461">치즈
					<select name="addlist[4].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select>
				<input type="checkbox" name="addlist[5].ingredient_id" value="195460">고추가루<br /> <br />
					<select name="addlist[5].ig_unit">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1통</option>
						<option value="2">2통</option>
						<option value="3">3통</option>
					</select>
				<br /> <br /> <button type="button" id="submit">체크한 재료 모두 장바구니에 추가하기</button>
			</fieldset>
			</form>
		</div>
		<div class="col-sm-5"
			style="background-color: lavenderblush; height: 800px;">
						<h4>주간 식단 추가</h4>

			<div>
				<input type="radio" name="time" value="아침">아침 
				<input type="radio" name="time" value="점심">점심 
				<input type="radio" name="time"	value="저녁">저녁
				<br /> <input type="button" value="칼로리 확인하기">
			</div>
			<div>
				<span>예상되는 칼로리</span> <strong>1200</strong> <span>kcal</span>
			</div>
			<input type="submit" value="식단에 추가하기">
		</div>
	</div>
	
</body>
</html>