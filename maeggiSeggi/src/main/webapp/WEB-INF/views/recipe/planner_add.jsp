<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 	<link href="../common/css/fonts.css" rel="stylesheet">
</head>
<body style="text-align: center;">
	<div class="row">
	<div class="col-sm-6" style="background-color:lavender;">
		<h2>나에게 없는 재료 체크하기</h2>
				<fieldset>
					<legend>재료확인</legend>
					<input type="checkbox" name="food" value="양파">양파
					<input type="checkbox" name="food" value="계란">계란
					<input type="checkbox" name="food" value="오이">오이
					<input type="checkbox" name="food" value="돼지고기">돼지고기
					<input type="checkbox" name="food" value="치즈">치즈
					<input type="checkbox" name="food" value="고추가루">고추가루<br/>
					<input type="button" value="체크한 재료 모두 장바구니에 추가하기">
				</fieldset>
	</div>
	<div class="col-sm-6" style="background-color:lavenderblush;">
		<div>
			<h2>날짜 선택</h2>
			<input type="date" name="day" min="2020-01-01">
			<input type="radio" name="time" value="아침">아침
			<input type="radio" name="time" value="점심">점심
			<input type="radio" name="time" value="저녁">저녁<br/>
			<input type="button" value="칼로리 확인하기">
		</div>
		<div>
			<span>예상되는 칼로리</span>
				<strong>1200</strong>
			<span>kcal</span>
		</div>
		<input type="submit" value="식단에 추가하기">
	</div>
	</div>
</body>
</html>