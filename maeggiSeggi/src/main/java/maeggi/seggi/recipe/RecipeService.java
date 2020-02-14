package maeggi.seggi.recipe;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface RecipeService {
	
	void insert(RecipeVO recipe);
	List<RecipeVO> searchList(String search);
	//List<RecipeVO> listall();
	List<HashMap<String, String>> detail(String recipe_id);
	List<RecipeVO> levellist(String cook_level);
	List<RecipeVO> readbyName(String name);
	//파일 업로드
	void upload(ArrayList<MultipartFile> file,String path);

	public List<RecipeVO> testlist(int pagenum, int contentnum);
	public int testcount();
	public int testcount2(String recipe_category);
	RecipeVO moveTopopup(String recipe_id);
	//좋아요
	public void like(String recipe_id) throws Exception;
	List<RecipeVO> recipeList(String recipe_category, int pagenum, int contentnum);
	List<RecipeVO> hitlist(String hit);
	List<NutrientVO> drunklist(String dname);
	List<weatherVO> weatherList(String today);
}
