package maeggi.seggi.restaurant;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
	@RequestMapping("/restaurant.do")
	public String restaurantview() {
		return "restaurant";
	}
	
	@RequestMapping("/click.do")
	public String click() {
		return "click";
	}
}
