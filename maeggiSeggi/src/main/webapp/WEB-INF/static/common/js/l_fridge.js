/**
 * 
 */

var category;
var target_clone;

$(document).ready(function() {	
	//재료 처음 한 번 로딩
	$.ajax({
		url: "/maeggiSeggi/ajax_ingredient.do",
		type: "get",
		data: {
			"category":"주재료"
		},
		success: function(data) {
			ingredients = "";
			for (var i = 0; i < data.length; i++) {
				ingredients = ingredients + "<li class='draggable' draggable='true'><div value=" + data[i].ingredient_id + ">" +
								"<img src=/maeggiSeggi/images/l_dish.png><p>" + data[i].name + "</p></div></li>";
			}
			$("#ig_list").empty();
			$("#ig_list").append(ingredients);
		}
	});
	
	//냉장고 버튼 내용 변경
	chagneButton();
	
	//테마 별 재료 불러오기
	$(".ig-btn").each(function() {
		$(this).on("click", function() { 
			category = $(this).children("p").text();
			getIngredientsByCategory();
		});
	});
	
	//이름 별 재료 정보 불러오기
	$("#input_search>a").on("click", function() {
		getIngredientsByName();
	});
	$("#input_search").keydown(function(key) {
		if(key.keyCode == 13) {
			getIngredientsByName();
		}
	});
	
	//냉장고 추가 제거
	manageFridge();
	
	//재료를 냉장고 안으로 드래그 앤 드랍
	$("#ig_list").on("dragstart", function(e) {
		target_clone = $(e.target).clone(true);
	})
	
	$("#fridge").on("drop", function() {
		alert($(this));
	})
});

function wow_default_alert(msg) {
	  alert(msg);
}

function manageFridge() {
	$(".plus-btn").each(function() {
		$(this).on("click", function() {
			if($("input[name=addF]").length) {
				alert("아직 등록되지 않은 냉장고가 있습니다!");
				return;
			}
			
			if($(this).attr("title") == "냉장고 추가") {
				mycheck = "<input type='radio' name='distinct_code'>";
				mydiv = "<div class='fridge-img-div'><img class='fridge-img-ico' src='/maeggiSeggi/images/refrigerator.png'><input name='addF' type='text' maxlength='5' placeholder='냉장고 이름을 입력하세요.'></div>";
				$("#check_box").append(mycheck);
				$("#manage_fridge").append(mydiv);
			} else if($(this).attr("title") == "냉장고 제거") {
				//서버에서도 지우고 여기서도 지우고...
				if($("#manage_fridge").children("div").length == 1) return;
				$("#manage_fridge").children("div").last().remove();
			}
		})
	})
}

function chagneButton() {
	$(".modal-btn").each(function() {
		$(this).on("mouseover", function() {
			if($(this).text() == "레시피") {
				$(this).text("추천");
				$(this).css("color", "#b8b8b8");
			} else if($(this).text() == "냉장고") {
				$(this).text("관리");
				$(this).css("color", "#b8b8b8");
			}
		});
		$(this).on("mouseout", function() {
			if($(this).text() == "추천") {
				$(this).text("레시피");
			} else if($(this).text() == "관리") {
				$(this).text("냉장고");
			}
		});
	});
}

function getIngredientsByCategory() {
	$.ajax({
		url: "/maeggiSeggi/ajax_ingredient.do",
		type: "get",
		data: {
			"category":category
		},
		success: function(data) {
			ingredients = "";
			for (var i = 0; i < data.length; i++) {
				ingredients = ingredients + "<li class='draggable' draggable='true'><div value=" + data[i].ingredient_id + ">";
				if(category == "주재료") {
					ingredients += "<img src=/maeggiSeggi/images/l_dish.png><p>" + data[i].name + "</p></div></li>";
				} else if(category == "부재료") {
					ingredients += "<img src=/maeggiSeggi/images/l_soup.png><p>" + data[i].name + "</p></div></li>";
				} else {
					ingredients += "<img src=/maeggiSeggi/images/l_chili-sauce.png><p>" + data[i].name + "</p></div></li>";
				}
			}
			$("#ig_list").empty();
			$("#ig_list").append(ingredients);
		}
	});
}

function getIngredientsByName() {
	var name = $("#input_search>input").val();
	if(name == "") wow_default_alert("찾으실 재료명을 입력하세요!");
	else {
		$.ajax({
    		url: "/maeggiSeggi/ajax_ingredientbyname.do",
    		type: "get",
    		data: {
    			"category":category,
    			"name":name
    		},
    		success: function(data) {
				ingredients = "";
				for (var i = 0; i < data.length; i++) {
					ingredients = ingredients + "<li class='draggable' draggable='true'><div value=" + data[i].ingredient_id + ">";
					if(category == "주재료") {
						ingredients += "<img src=/maeggiSeggi/images/l_dish.png><p>" + data[i].name + "</p></div></li>";
					} else if(category == "부재료") {
						ingredients += "<img src=/maeggiSeggi/images/l_soup.png><p>" + data[i].name + "</p></div></li>";
					} else {
						ingredients += "<img src=/maeggiSeggi/images/l_chili-sauce.png><p>" + data[i].name + "</p></div></li>";
					}
				}
				$("#ig_list").empty();
				$("#ig_list").append(ingredients);
			}
    	});
	}
}
