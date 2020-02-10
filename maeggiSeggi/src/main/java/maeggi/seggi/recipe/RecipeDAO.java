package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;



public interface RecipeDAO {
	//레시피 조회
	void insert(RecipeVO recipe);
	List<RecipeVO> categorySearch(String category);
	List<RecipeVO> searchList(String search);
	List<RecipeVO> listall();
	public int updatehit(String recipe_id);
	public List<HashMap<String, String>> detail(String recipe_id);
	void insertdetail(RecipeDetailVO recipeDetailVO);
}
