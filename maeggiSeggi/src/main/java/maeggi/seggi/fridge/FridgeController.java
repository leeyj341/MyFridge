package maeggi.seggi.fridge;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FridgeController {
	@RequestMapping("/refrigerator/fridge.do")
	public String fridgeContent() {
		return "fridge";
	}
	
	@RequestMapping("/calendar.do")
	public String calendar() {
		return "calendar";
	}

}
