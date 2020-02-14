package maeggi.seggi.fridge;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FridgeDetailController {
	@Autowired
	FridgeDetailService service;
	
	@RequestMapping(value="/fridgeDetail/ajax_fridgeDetail.do", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public @ResponseBody ArrayList<HashMap<String, String>> getFridgeDetailList(String refrigerator_id) {
		ArrayList<HashMap<String, String>> list = (ArrayList<HashMap<String, String>>)service.selectAll(refrigerator_id);
		System.out.println(list);
		return list;
	}
	
	@RequestMapping(value="/fridgeDetail/ajax_fd_insert.do", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String insertFridgeDetail(String ingredient_id, String refrigerator_id, String ig_amount) {
		System.out.println(ig_amount);
		int result = service.insertFridge(ingredient_id, refrigerator_id, ig_amount);
		String message = "";
		if(result == 1) {
			message = "재료 등록에 성공했습니다.";
		} else {
			message = "재료 등록에 실패했습니다.";
		}
		return message;
	}
	
	@RequestMapping(value="/fridgeDetail/ajax_fd_delete.do", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String deleteFridgeDetail(FridgeDetailVO vo) {
		int result = service.deleteFridge(vo);
		String message = "";
		if(result == 1) {
			message = "재료를 삭제했습니다.";
		} else {
			message = "재료 삭제에 실패했습니다.";
		}
		return message;
	}
}
