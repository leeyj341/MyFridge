<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>매끼세끼 - 마이 냉장고</title>

    <!-- CSS -->
    <link href="/maeggiSeggi/common/css/refrigerator.css" rel="stylesheet">
    <link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
    
    <!-- JS -->
    <script src="/maeggiSeggi/common/js/fridge.js"></script>
    <script type="text/javascript">
	    $(document).ready(function() {
	    	var memId = '<%= session.getAttribute("id") %>';
	    	$.ajax({
	    		url:"/maeggiSeggi/refrigerator/ajax_fridge.do",
	    		type:"get",
	    		data: {
	    			"id": memId
	    			},
	    		success: function(data) {
	    			if(data.length < 1) $("#fridge_name").text("냉장고를 추가하세요!");
	    			
	    			mydata = "";
	    			for (var i = 0; i < data.length; i++) {
	    				if(data[i].main_fridge == '1') {
	    					$("#fridge_name").html("<b>" + memId + "</b> 님의 " + "<b>#" + data[i].name + "</b> 냉장고");
	    				}
	    			}
	    		}
	    	});
	    });
    </script>
</head>

<body class="bg-amond">
	<!-- ******Refrigerator Area Start ****** -->
	<div class="fridge-area">
		<div class="col-12">
			<!-- ****** Theme Select Area Start ****** -->
			<div class="button-area col-1">
				<button class="fridge-btn btn-orange btn-fill-vert-o">
					<p>주재료</p>
				</button>
				<button class="fridge-btn btn-orange btn-fill-vert-o">
					<p>부재료</p>
				</button>
				<button class="fridge-btn btn-orange btn-fill-vert-o">
					<p>양념</p>
				</button>
				<button class="fridge-btn btn-orange btn-fill-vert-o">
					<p>레시피</p>
				</button>
				<button class="fridge-btn btn-orange btn-fill-vert-o">
					<p>냉장고</p>
				</button>
			</div>
			<!-- ****** Theme Select Area End ****** -->
			<!-- ****** Ingredient Select Area Start ****** -->
			<div class="refrigerator-area col-5" id="selectIngredientBox">
				<form class="select-wrapper" name="ingrediennt_select_form"
					method="POST" action="">
					<ul id="fridge_list" class="sort-list">
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
					</ul>
				</form>
			</div>
			<!-- ****** Ingredient Select Area End ****** -->

			<!-- ****** My Fridge Area Select Area End ****** -->
			<div class="refrigerator-area col-5">
				<div class="fridge-wrapper">
					<img id="fridge-image" src="/maeggiSeggi/images/refrigerator.png">
					<!-- 냉장고 div로 배경이미지를 넣거나 border 속성으로 구분.. -->
					<ul class="list-scroll fridge-list">
						<!-- 동적으로 추가되어야 함 -->
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
					</ul>
				</div>
				<p id="fridge_name"></p>
			</div>

		</div>
	</div>
    
</body>
</html>