package maeggi.seggi.mealPlanner;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;


@Controller
public class mealPlannerController {
	@Autowired
	mealPlannerService service;
	
	@RequestMapping(value = "/mealPlanner/read.do", method = RequestMethod.GET)
	public String read(mealPlannerVO meal,Model model) {
		model.addAttribute("meal", service.read(meal));
		return "mypage/main";
	}
	
	
}












