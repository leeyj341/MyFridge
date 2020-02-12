package maeggi.seggi.recipe;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("recipeDetailDao")
public class RecipeDetailDAOImpl implements RecipeDetailDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public void insertdetail(RecipeDetailVO detail) {
		sqlSession.insert("maeggi.seggi.recipe.insertdetail",detail);
	}
}
