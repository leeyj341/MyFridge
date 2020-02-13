package maeggi.seggi.ingredient;

import java.util.ArrayList;
import java.util.List;

public interface IngredientDAO {
	List<IngredientVO> selectAllByCategory(String category);
	List<IngredientVO> selectAllByName(String category, String name);
	void insertigdetail(ArrayList<IngredientVO> igdetail);
}