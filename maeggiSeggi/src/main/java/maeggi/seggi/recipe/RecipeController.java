package maeggi.seggi.recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecipeController {
	@RequestMapping("/recipe.do")
	public String recipe() {
		return "recipe";
	}
	@RequestMapping("/themeRecipe.do")
	public String theme() {
		return "theme";
	}
	@RequestMapping("/levelRecipe.do")
	public String level() {
		return "level";
	}
	@RequestMapping("/searchRecipe.do")
	public String search() {
		return "search";
	}
}
