package maeggi.seggi.recipe;

import java.util.List;

public interface RecipeService {
	List<RecipeVO> recipeList(String category);
	int insert(RecipeVO recipe);
	List<RecipeVO> searchList(String search);
	List<RecipeVO> searchList(String tag, String search);
}
