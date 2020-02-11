package maeggi.seggi.ingredient;

import java.util.List;

public interface IngredientDAO {
	List<IngredientVO> selectAllByCategory(String category);
	List<IngredientVO> selectAllByName(String category, String name);
}
