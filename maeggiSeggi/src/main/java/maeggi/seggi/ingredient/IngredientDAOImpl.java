package maeggi.seggi.ingredient;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ingredientDAO")
public class IngredientDAOImpl implements IngredientDAO {
	@Autowired
	SqlSession session;

	@Override
	public List<IngredientVO> selectAllByCategory(String category) {
		return session.selectList("maeggi.seggi.ingredient.selectAllByCategory", category);
	}

}
