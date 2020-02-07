package maeggi.seggi.recipe;

import java.util.List;

public interface RecipeDAO {
	//레시피 조회
	List<RecipeVO> recipeList();
	int insert(RecipeVO recipe);
	List<RecipeVO> categorySearch(String categorySearch);
	List<RecipeVO> searchList(String search);
	
	
}
