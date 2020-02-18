package maeggi.seggi.fridge;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FridgeDetailController {
	@Autowired
	FridgeDetailService service;
	
	@RequestMapping(value="/fridgeDetail/fd_insert.do", method=RequestMethod.POST)
	public String insertFridgeDetail(FridgeDetailListVO voList) {
		//원래 거 삭제하고 추가
		service.deletebyId(voList.getDetailList().get(0).getRefrigerator_id());
		service.insertFridge(voList);
		return "redirect:/refrigerator/fridge.do";
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
