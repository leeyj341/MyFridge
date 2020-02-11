package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;

public interface RecipeService {
	List<RecipeVO> recipeList(String category);
	void insert(RecipeVO recipe);
	List<RecipeVO> searchList(String search);
	List<RecipeVO> listall();
	List<HashMap<String, String>> detail(String recipe_id);
	List<RecipeVO> levellist(String cook_level);
	List<RecipeVO> readbyName(String name);
	RecipeVO moveTopopup(RecipeVO recipe_id);
}
