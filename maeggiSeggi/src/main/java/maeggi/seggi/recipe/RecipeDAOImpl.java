package maeggi.seggi.recipe;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("recipeDao")
public class RecipeDAOImpl implements RecipeDAO {
	@Autowired
	SqlSession SqlSession;
	
	@Override
	public List<RecipeVO> recipeList() {
		return SqlSession.selectList("maeggi.seggi.recipe.listall");
	}

	@Override
	public int insert(RecipeVO recipe) {
		System.out.println(recipe);
		return SqlSession.insert("maeggi.seggi.recipe.insert",recipe);
	}

	@Override
	public List<RecipeVO> categorySearch(String categorySearch) {
		System.out.println("dao=>"+categorySearch);//디버깅
		List<RecipeVO> list = SqlSession.selectList("maeggi.seggi.recipe.categoryRecipe");
		System.out.println("dao=>"+list.size());
		return list;
	}

	@Override
	public List<RecipeVO> searchList(String search) {
		// TODO Auto-generated method stub
		return null;
	}


}
