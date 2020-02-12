package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface RecipeService {
	List<RecipeVO> recipeList(String category);
	void insert(RecipeVO recipe);
	List<RecipeVO> searchList(String search);
	List<HashMap<String, String>> detail(String recipe_id);
	List<RecipeVO> levellist(String cook_level);
	List<RecipeVO> readbyName(String name);
	//파일 업로드
	void upload(MultipartFile file,String path,String fileName);
	List<RecipeVO> listall();
	public List<RecipeVO> testlist(int pagenum, int contentnum);
}
