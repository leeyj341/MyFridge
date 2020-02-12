<<<<<<< HEAD
package maeggi.seggi.ingredient;

import java.util.List;

public interface IngredientDAO {
	List<IngredientVO> selectAllByCategory(String category);
	List<IngredientVO> selectAllByName(String category, String name);
	void insertigdetail(IngredientVO igdetail);
}
=======
package maeggi.seggi.ingredient;

import java.util.List;

public interface IngredientDAO {
	List<IngredientVO> selectAllByCategory(String category);
	List<IngredientVO> selectAllByName(String category, String name);
}
>>>>>>> branch 'master' of https://github.com/leeyj341/MyFridge.git
