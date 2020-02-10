package maeggi.seggi.recipe;

import java.util.List;
import java.util.Map;



public interface RecipeDAO {
	//레시피 조회
	void insert(RecipeVO recipe);
	List<RecipeVO> categorySearch(String category);
	List<RecipeVO> searchList(String search);
	List<RecipeVO> listall();
	public int updatehit(String recipe_id);
	public List<Map<String, String>> detail(String recipe_id);
	void insertdetail(RecipeDetailVO recipeDetailVO);
}
