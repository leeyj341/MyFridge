package maeggi.seggi.ingredient;

import java.util.List;

public interface IngredientDAO {
	List<IngredientVO> selectAllByTypeName(String type);
}
