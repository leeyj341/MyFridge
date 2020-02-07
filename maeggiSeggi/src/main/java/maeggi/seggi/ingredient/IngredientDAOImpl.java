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
	public List<IngredientVO> selectAllByTypeName(String type) {
		return session.selectList("maeggi.seggi.ingredient.selectAllByTypeName", type);
	}

}
