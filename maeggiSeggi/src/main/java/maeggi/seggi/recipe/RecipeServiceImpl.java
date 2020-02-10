package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
@Service
public class RecipeServiceImpl implements RecipeService {
	@Autowired
	@Qualifier("recipeDao")
	RecipeDAO dao;
//	IngredientDAO daoig;
	
	@Override
	public List<RecipeVO> recipeList(String category) {
		List<RecipeVO> list = null;
		System.out.println("category : " + category);
		if(category!=null) {
			if(category.equals("all")) {
				list=dao.listall(); 			
			}else {
				list=dao.categorySearch(category);
			}
		}
		return list;
	}


	@Override
	public void insert(RecipeVO recipe) {
		for (int i = 0; i < recipe.getRecipe_detail().size(); i++) {
			dao.insertdetail(recipe.getRecipe_detail().get(i));			// insert into recipe_detail values(#{id}, #{dsd},..... )
		}
	/*	for (int i = 0; i < recipe.getIg_detail().size(); i++) {
			dao.insertigdetail(recipe.getIg_detail().get(i));				//insert into ingredients values(#{id}, #{dsd},..... )
		}*/
		dao.insert(recipe);											//insert into recipe values()
	}

	@Override
	public List<RecipeVO> searchList(String search) {
		return dao.searchList(search);
	}


	@Override
	public List<RecipeVO> listall() {
		return dao.listall();
	}


	@Override
	public List<HashMap<String, String>> detail(String recipe_id) {
		
		//조회수 업데이트
		dao.updatehit(recipe_id);
		return dao.detail(recipe_id);
	}

}
