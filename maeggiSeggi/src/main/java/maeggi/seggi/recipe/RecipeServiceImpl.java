package maeggi.seggi.recipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
@Service
public class RecipeServiceImpl implements RecipeService {
	@Autowired
	@Qualifier("recipeDao")
	RecipeDAO dao;
	
	@Override
	public List<RecipeVO> recipeList(String category) {
		List<RecipeVO> list = null;
		System.out.println("category : " + category);
		if(category!=null) {
			if(category.equals("all")) {
				list=dao.recipeList();
			}else {
				list=dao.categorySearch(category);
			}
		}
		return list;
	}


	@Override
	public int insert(RecipeVO recipe) {
		// TODO Auto-generated method stub
		return dao.insert(recipe);
	}

	@Override
	public List<RecipeVO> searchList(String search) {
		return dao.searchList(search);
	}

	@Override
	public List<RecipeVO> searchList(String tag, String search) {
		// TODO Auto-generated method stub
		return null;
	}

}
