package maeggi.seggi.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RecipeControllerT {
	@Autowired
	RestaurantService service;
	@RequestMapping(value="/restaurant/add.do", method=RequestMethod.POST)
	public String insert(RecipePlannerAddTVO addlist) {
		System.out.println(addlist);
		/*int result = service.insert(add);
		System.out.println("########################"+result);*/
		return "redirect:/recipe/addPlanner.do";
	}
}
