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
});