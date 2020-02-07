package maeggi.seggi.fridge;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FridgeController {
	@Autowired
	FridgeService service;
	
	@RequestMapping("/refrigerator/fridge.do")
	public String fridgeContent() {
		return "fridge";
	}
	
	@RequestMapping(value="/refrigerator/ajax_fridge.do", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public @ResponseBody ArrayList<FridgeVO> getUserFridge(String id) {
		ArrayList<FridgeVO> list =  (ArrayList<FridgeVO>)service.selectMyFridgeByName(id);
		return list;
	}
	
	@RequestMapping("/calendar.do")
	public String calendar() {
		return "calendar";
	}
	
	

}
