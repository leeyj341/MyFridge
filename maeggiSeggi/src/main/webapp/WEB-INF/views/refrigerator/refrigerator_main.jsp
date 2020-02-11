<%@page import="maeggi.seggi.fridge.FridgeVO"%>
<%@page import="java.util.ArrayList"%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link href="/maeggiSeggi/common/css/refrigerator.css" rel="stylesheet">
    <link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
    <link rel="stylesheet" href="/maeggiSeggi/common/css/wow-alert.css">
    
    <!-- JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <script src="/maeggiSeggi/common/js/wow-alert.js"></script>
    <script type="text/javascript">
	    var fridgeList;
	    
	    $(document).ready(function() {
	    	var memId = '<%= session.getAttribute("id") %>';
	    	
	    	$.ajax({
	    		url:"/maeggiSeggi/refrigerator/ajax_fridge.do",
	    		async: false,
	    		type:"get",
	    		data: {
	    			"id": memId
	    			},
	    		success: function(data) {
	    			fridgeList = data;
	    			if(data.length < 1) $("#fridge_name").text("냉장고를 추가하세요!");
	    			else if(data.length == 1) {
	    				$("#fridge_name").html("<b>" + memId + "</b> 님의 " + "<b>#" + data[0].name + "</b> 냉장고");
	    			}
	    			else {
	    				var flag = false;
	    				for (var i = 0; i < data.length; i++) {
	        				if(data[i].distinct_code == '1') {
	        					$("#fridge_name").html("<b>" + memId + "</b> 님의 " + "<b>#" + data[i].name + "</b> 냉장고");
	        					flag = true;
	        					
	        				} else {
	        					if(flag == false) {
	        						$("#fridge_name").html("<b>" + memId + "</b> 님의 " + "<b>#" + data[i].name + "</b> 냉장고");
	        						flag = true;
	        					}
	        				}
	        			}	
	    			}
	    		}
	    	});
	    });
    </script>
    <script src="/maeggiSeggi/common/js/l_ingredients.js"></script>
</head>

<body class="bg-amond">
	<!-- ******Refrigerator Area Start ****** -->
	<div class="fridge-area">
		<div class="col-12">
			<!-- ****** Theme Select Area Start ****** -->
			<div class="button-area col-1">
				<button class="ig-btn fridge-btn btn-orange btn-fill-vert-o">
					<p>주재료</p>
				</button>
				<button class="ig-btn fridge-btn btn-orange btn-fill-vert-o">
					<p>부재료</p>
				</button>
				<button class="ig-btn fridge-btn btn-orange btn-fill-vert-o">
					<p>양념</p>
				</button>
				<a class="modal-btn fridge-btn btn-orange btn-fill-vert-o" type="button">레시피</a>
				<a class="modal-btn fridge-btn btn-orange btn-fill-vert-o" type="button" href="#manage_fridge" rel="modal:open">냉장고</a>
			</div>
			<!-- ****** Theme Select Area End ****** -->
			<!-- ****** Ingredient Select Area Start ****** -->
			<div class="refrigerator-area col-5" id="selectIngredientBox">
				<form class="select-wrapper" name="ingrediennt_select_form"
					method="POST" action="">
					<ul id="ig_list" class="sort-list">
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
				<div id="input_search">
					<input type="text" placeholder="재료명을 입력하세요.">
					<a><i class="fa fa-search fa-2x" aria-hidden="true"></i></a>
				</div>
			</div>
			<!-- ****** Ingredient Select Area End ****** -->

			<!-- ****** My Fridge Area Select Area End ****** -->
			<div class="refrigerator-area col-5">
				<div class="fridge-wrapper">
					<img id="fridge-image" src="/maeggiSeggi/images/refrigerator.png">
					<!-- 냉장고 div로 배경이미지를 넣거나 border 속성으로 구분.. -->
					<ul id="fridge" class="list-scroll fridge-list">
						<!-- 동적으로 추가되어야 함 -->
						
					</ul>
				</div>
				<p id="fridge_name"></p>
			</div>

		</div>
	</div>
    
    <!-- 모달 창입니다 ---------------------------------------------------------------------- -->
    <div id="manage_fridge" class="modal" role="dialog" aria-hidden="true">
  		<div class="fridge-img-div">
  			<img class="fridge-img-ico" src="">
  			<p></p>
  		</div>
  		<a href="#" class="" rel="modal:close">Close</a>
	</div>
</body>
</html>