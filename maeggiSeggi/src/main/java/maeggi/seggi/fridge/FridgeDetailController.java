package maeggi.seggi.fridge;

import java.util.ArrayList;

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
	public @ResponseBody ArrayList<FridgeDetailVO> getFridgeDetailList(String refrigerator_id) {
		ArrayList<FridgeDetailVO> list = (ArrayList<FridgeDetailVO>)service.selectAll(refrigerator_id);
		return list;
	}
	
	@RequestMapping(value="/fridgeDetail/ajax_fd_insert.do", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String insertFridgeDetail(FridgeDetailVO vo) {
		int result = service.insertFridge(vo);
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
