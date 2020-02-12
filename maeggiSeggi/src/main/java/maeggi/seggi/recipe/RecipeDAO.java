package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import maeggi.seggi.ingredient.IngredientVO;



public interface RecipeDAO {
	//레시피 조회
	
	List<RecipeVO> categorySearch(String category);
	List<RecipeVO> searchList(String search);
	List<RecipeVO> listall();
	RecipeVO moveTopopup(String recipe_id);
	public int updatehit(String recipe_id);
	public List<HashMap<String, String>> detail(String recipe_id);
	
	List<RecipeVO> readbyName(String name);
	List<RecipeVO> levellist(String cook_level);
	//레시피 삽입
	
	
	void insert(RecipeVO recipe);
	
	public List<RecipeVO> testlist (@Param("pagenum") int pagenum, @Param("contentnum") int contentnum);
	public int testcount();
	//public List<RecipeVO> listall(@Param("pagenum") int pagenum, @Param("contentnum") int contentnum);
}
