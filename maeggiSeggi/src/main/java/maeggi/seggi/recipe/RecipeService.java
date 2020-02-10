package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface RecipeService {
	List<RecipeVO> recipeList(String category);
	void insert(RecipeVO recipe);
	List<RecipeVO> searchList(String search);
	List<RecipeVO> listall();
	List<Map<String, String>> detail(String recipe_id);
	List<RecipeVO> levellist(String cook_level);
}
