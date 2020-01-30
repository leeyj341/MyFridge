package team.maeggiSeggi.recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecipeController {
	@RequestMapping("/view/recipe.do")
	public String recipe() {
		return "recipe";
	}
}
