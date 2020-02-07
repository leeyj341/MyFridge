package maeggi.seggi.recipe;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("recipeDao")
public class RecipeDAOImpl implements RecipeDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<RecipeVO> recipeList() {
		return sqlSession.selectList("maeggi.seggi.recipe.listall");
	}

	@Override
	public int insert(RecipeVO recipe) {
		System.out.println(recipe);
		return sqlSession.insert("maeggi.seggi.recipe.insert",recipe);
	}

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


}
