package maeggi.seggi.ingredient;

import java.util.List;

public interface IngredientService {
	List<IngredientVO> selectAllByCategory(String category);
}
