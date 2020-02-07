package maeggi.seggi.restaurant;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestaurantController {
	@Autowired
	RstService service;
	@RequestMapping("/restaurant.do")
	public String restaurantview() {
		return "restaurant";
	}
	
	@RequestMapping("/click.do")
	public String click() {
		return "click";
	}
	
	@RequestMapping(value="/restaurant/search.do",method=RequestMethod.GET,
			produces="application/json;charset=utf-8")
	public @ResponseBody ArrayList<searchVO> search(String tit) {
		ArrayList<searchVO> searchlist = service.main(tit);
		
		System.out.println("SIZE : " + searchlist.size());
		return searchlist;
	}
}
