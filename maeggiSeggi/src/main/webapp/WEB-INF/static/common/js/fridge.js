/**
 * 
 */

$(document).ready(function() {
	$(".fridge-btn").each(function() {
		$(this).on("mouseover", function() {
			if($(this).children("p").text() == "레시피") {
				$(this).children("p").text("추천")
			} else if($(this).children("p").text() == "냉장고") {
				$(this).children("p").text("관리")
			}
		});
		$(this).on("mouseout", function() {
			if($(this).children("p").text() == "추천") {
				$(this).children("p").text("레시피")
			} else if($(this).children("p").text() == "관리") {
				$(this).children("p").text("냉장고")
			}
		})
	});
	
	$(".fridge-btn").each(function() {
		$(this).on("click", function() {
			category = $(this).children("p").text();
			$.ajax({
	    		url: "/maeggiSeggi/ajax_ingredient.do",
	    		type: "get",
	    		data: {
	    			"category":category
	    		},
	    		success: function(data) {
	    			list = data;
					ingredients = "";
					for (var i = 0; i < data.length; i++) {
						ingredients = ingredients + "<li><div id=" + data[i].ingredient_id + " draggable='true'>";
						if(category == "주재료") {
							ingredients += "<img src=/maeggiSeggi/images/l_dish.png><p>" + data[i].name + "</p></div></li>";
						} else if(category == "부재료") {
							ingredients += "<img src=/maeggiSeggi/images/l_soup.png><p>" + data[i].name + "</p></div></li>";
						} else {
							ingredients += "<img src=/maeggiSeggi/images/l_chili-sauce.png><p>" + data[i].name + "</p></div></li>";
						}
					}
					$("#fridge_list").empty();
					$("#fridge_list").append(ingredients);
				}
	    	});
		});
	});
	
	$("#input_search>a").on("click", function() {
		var text = $("#input_search>input").val();
		if(text == "") wow_default_alert("찾으실 재료명을 입력하세요!");
		else {
			//재료를 입력했을 때 해당 이름 가진 재료만 보여주기
			/*$("#fridge_list>li").each(function() {
				$(this).children("p:contains(text)").css("display", none);
			})*/
		}
	});
});

function wow_default_alert(msg) {
	  alert(msg);
}
