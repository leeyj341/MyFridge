package maeggi.seggi.recipe;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import maeggi.seggi.ingredient.IngredientDAO;
@Service
public class RecipeServiceImpl implements RecipeService {
	@Autowired
	@Qualifier("recipeDao")
	RecipeDAO dao;
	IngredientDAO daoig;
	RecipeDetailDAO daodt;
	
	FileOutputStream fos;
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
		Random rand = new Random();
		String id = "rec" + rand.nextInt(10000000);
		
		recipe.setRecipe_id(id);
		dao.insert(recipe);												//insert into recipe values()
		for (int i = 0; i < recipe.getRecipe_detail().size(); i++) {
			recipe.getRecipe_detail().get(i).setRecipe_id(id); 
			daodt.insertdetail(recipe.getRecipe_detail().get(i));			// insert into recipe_detail values(#{id}, #{dsd},..... )
		}
		for (int i = 0; i < recipe.getIg_detail().size(); i++) {
			recipe.getIg_detail().get(i).setRecipe_id(id); 
			daoig.insertigdetail(recipe.getIg_detail().get(i));			//insert into ingredients values(#{id}, #{dsd},..... )
		}
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


	@Override
	public List<RecipeVO> readbyName(String name) {
		return dao.readbyName(name);
	}

	@Override
	public List<RecipeVO> levellist(String cook_level) {
		List<RecipeVO> list = dao.levellist(cook_level);
		return list;
	}

	@Override
	public void upload(MultipartFile file, String path, String fileName) {
		try {
			byte[] data = file.getBytes();
			fos = new FileOutputStream(path+File.separator+fileName);
			fos.write(data);
		}catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				if(fos!=null)fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
@Override
	public RecipeVO moveTopopup(String recipe_id) {
		return dao.moveTopopup(recipe_id);
	}

	@Override
	public List<RecipeVO> testlist(int pagenum, int contentnum) {
		// TODO Auto-generated method stub
		return dao.testlist(pagenum, contentnum);
	}

}
