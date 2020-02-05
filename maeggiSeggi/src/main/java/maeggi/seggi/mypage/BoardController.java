package maeggi.seggi.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@RequestMapping("/board/list.do")
	public ModelAndView listall(){
		ModelAndView mav = new ModelAndView();
		List<BoardVO> list = service.listall();
		mav.addObject("list", list);
		mav.setViewName("mypage/ask");
		return mav;
	}
	
	@RequestMapping(value="/board/insert.do",method=RequestMethod.GET)
	public String insertView() {
		return "mypage/ask/write";
		
	}

	@RequestMapping(value = "/board/insert.do" ,method = RequestMethod.POST)
	public String insert(BoardVO board) {
		return "redirect:/board/list.do";
		
	}
	
	@RequestMapping("/board/read.do")
	public ModelAndView read(String board_no){
		ModelAndView mav = new ModelAndView();
		BoardVO read = service.read(board_no);
		mav.addObject("read", read);
		mav.setViewName("mypage/ask/title");
		return mav;
	}
	
	@RequestMapping(value = "/board/update.do" ,method = RequestMethod.POST)
	public String update(BoardVO board) {
		return "redirect:/board/list.do";
	}
	
	
	public String delete(BoardVO board) {
		return "redirect:/board/list.do";		
	}
}
