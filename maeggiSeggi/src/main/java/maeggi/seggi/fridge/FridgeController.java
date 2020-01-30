package maeggi.seggi.fridge;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FridgeController {
	@RequestMapping("/views/fridge.do")
	public String fridgeContent() {
		return "fridgeContent";
	}

}
