package maeggi.seggi.recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecipeController {
	@RequestMapping("/recipe/main.do")
	public String recipe() {
		return "main";
	}
	@RequestMapping("/recipe/themeRecipe.do")
	public String theme() {
		return "theme";
	}
	@RequestMapping("/recipe/levelRecipe.do")
	public String level() {
		return "level";
	}
	@RequestMapping("/recipe/searchRecipe.do")
	public String search() {
		return "search";
	}
	@RequestMapping("/recipe/detailRecipe.do")
	public String detail() {
		return "detail";
	}
}
