package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("recipeDao")
public class RecipeDAOImpl implements RecipeDAO {
	@Autowired
	SqlSession sqlSession;
	

	@Override
	public List<RecipeVO> listall() {
		return sqlSession.selectList("maeggi.seggi.recipe.listall");
	}

	@Override
	public void insert(RecipeVO recipe) {
		sqlSession.insert("maeggi.seggi.recipe.insert",recipe);
	}
	
	@Override
	public void insertdetail(RecipeDetailVO detail) {
		sqlSession.insert("maeggi.seggi.recipe.insertdetail",detail);
	}
	
/*	@Override
	public void insertigdetail(IngredientVO igdetail) {
		sqlSession.insert("maeggi.seggi.recipe.insertigdetail",igdetail);
	}*/

	@Override
	public List<RecipeVO> categorySearch(String category) {
		List<RecipeVO> list = sqlSession.selectList("maeggi.seggi.recipe.categoryRecipe", category);
		System.out.println(category + list.size());
		return list;
	}

	@Override
	public List<RecipeVO> searchList(String search) {
		System.out.println(search);
		List<RecipeVO> recipeList = sqlSession.selectList("maeggi.seggi.recipe.recipeSearch",search);
		System.out.println("dao=>"+recipeList.size());
		return recipeList;
	}

	@Override
	public int updatehit(String recipe_id) {
		return sqlSession.update("maeggi.seggi.recipe.updatehit",recipe_id);
		
	}

	@Override
	public List<HashMap<String, String>> detail(String recipe_id) {
		List<HashMap<String, String>> list = sqlSession.selectList("maeggi.seggi.recipe.detail",recipe_id);
		return list;
	}

	@Override
	public List<RecipeVO> readbyName(String name) {
		List<RecipeVO> mapSearch = sqlSession.selectList("maeggi.seggi.recipe.recipeSearch",name);
		
		return mapSearch;
	}

	@Override
	public List<RecipeVO> levellist(String cook_level) {
		return sqlSession.selectList("maeggi.seggi.recipe.levelRecipe", cook_level);
	}



}
