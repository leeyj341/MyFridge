package maeggi.seggi.recipeFavorite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RecipeFavoriteController {
	@Autowired
	RecipeFavoriteService service;
	
	@RequestMapping(value="/favorite/insert.do", method=RequestMethod.POST)
	public String insertFavorite(RecipeFavoriteVO vo) {
		System.out.println(vo);
		service.insertFavorite(vo);
		return "forward:/recipe/detailRecipe.do?id=" + vo.getRecipe_id();
	}
	
}
