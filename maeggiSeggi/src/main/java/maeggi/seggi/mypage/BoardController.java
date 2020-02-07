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
		service.insert(board);
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
	//======================= 답변형 게시판 =========================
	//댓글 전체보기
	@RequestMapping("/board/list_reply.do")
	public ModelAndView list_reply(){
		ModelAndView mav = new ModelAndView();
		List<BoardVO> list_reply = service.list_reply();
		mav.addObject("list_reply", list_reply);
		mav.setViewName("mypage/ask/title");
		return mav;
	}
	
	@RequestMapping(value="/board/title.do" , method = RequestMethod.GET)
	public String preUpdate(BoardVO board) {
		service.update(board);
		return "redirect:/board/title.do";
	}
	
	@RequestMapping(value="/board/title.do", method = RequestMethod.POST)
	public String updateGrpord(BoardVO board) {
		service.reply(board);
		return "redirect:/board/title.do";
	}
	
	@RequestMapping(value="/board/reply.do", method = RequestMethod.POST)
	public String reply(BoardVO board) {
		service.reply(board);
		return "redirect:/board/title.do";
	}
	
	
	
}
