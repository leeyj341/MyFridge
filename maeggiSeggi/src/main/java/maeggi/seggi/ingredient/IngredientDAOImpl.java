package maeggi.seggi.ingredient;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public List<IngredientVO> selectAllByName(String category, String name) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("category", category);
		return session.selectList("maeggi.seggi.ingredient.selectAllByName", map);
	}
}
