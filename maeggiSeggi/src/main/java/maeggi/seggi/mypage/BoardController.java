package maeggi.seggi.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import maeggi.seggi.reply.replyBoardVO;
import maeggi.seggi.reply.replyService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	@Autowired
	replyService replyService;

	@RequestMapping("/board/list.do")
	public ModelAndView listall() {

		ModelAndView mav = new ModelAndView();
		List<BoardVO> list = service.listall();
		System.out.println(list);
		mav.addObject("list", list);
		mav.setViewName("mypage/ask");
		return mav;
	}

	// 게시글을 작성하기 위한 뷰를 response할 메소드
	@RequestMapping(value = "/board/insert.do", method = RequestMethod.GET)
	public String insertView() {
		return "mypage/ask/write";
	}

	// 입력한 글을 실제 db에 넣는 메소드. form에서 action을 수행했을 때 POST를 쓴다.
	@RequestMapping(value = "/board/insert.do", method = RequestMethod.POST)
	public String insert(BoardVO board) {
		service.insert(board);
		return "redirect:/board/list.do";

	}

	@RequestMapping(value = "/board/read.do", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) {
		model.addAttribute("read", service.read(boardVO.getAskno()));
		model.addAttribute("list_reply", replyService.list_reply());
		return "mypage/ask/title";
	}
	
	 //update.jsp 보여줌
		@RequestMapping(value = "/board/update.do", method = RequestMethod.GET)
		public ModelAndView updateGET(BoardVO board) {
			//System.out.println("============="+askno);
			//BoardVO board = service.read(askno);
			ModelAndView mav = new ModelAndView();
			BoardVO uplist = service.updatelist(board);
			mav.addObject("uplist", uplist);
			mav.setViewName("mypage/modify");
			return mav;
	
		}
	    
	    //실제로 게시물을 수정함
		@RequestMapping(value = "/board/update.do", method = RequestMethod.POST)
		public String updatePOST(BoardVO board){
			int result = service.update(board);
			System.out.println("수정된 값 갯수"+result);
			//return "redirect:/board/read.do?askno=\"board.getAskno()\"";
			return "redirect:/board/list.do";
		}
	
	

	// 글 삭제
	@RequestMapping(value = "/board/delete.do", method = RequestMethod.GET)
	public String delete(int askno) {
		System.out.println("취소할 것" + askno);
		service.delete(askno);
		
		return "redirect:/board/list.do";

	}
	
	
	@RequestMapping("/board/information_update.do")
	public String information_update() {
		return "mypage/information/update";
	}
	
	@RequestMapping("/board/main.do")
	public String mypage_main() {
		return "mypage/main";
	}
	
	@RequestMapping("/board/mypoint.do")
	public String mypage_mypoint() {
		return "mypage/mypoint";
	}
	
	@RequestMapping("/board/recipe_favorite.do")
	public String mypage_recipefavorite() {
		return "mypage/recipe_favorite";
	}
	
	
	
	
	
	
	
	/*
	 * //======================= 답변형 게시판 =========================// //댓글 전체보기
	 * 
	 * @RequestMapping("/board/list_reply.do") public ModelAndView list_reply(){
	 * ModelAndView mav = new ModelAndView(); List<BoardVO> list_reply =
	 * service.list_reply(); mav.addObject("list_reply", list_reply);
	 * mav.setViewName("mypage/ask/title"); return mav; }
	 * 
	 * @RequestMapping(value="/board/title.do" , method = RequestMethod.GET) public
	 * String preUpdate(BoardVO board) { service.update(board); return
	 * "redirect:/board/title.do"; }
	 * 
	 * @RequestMapping(value="/board/title.do", method = RequestMethod.POST) public
	 * String updateGrpord(BoardVO board) { service.reply(board); return
	 * "redirect:/board/title.do"; }
	 * 
	 * //bbsno이 0이고 grpno가 0이 아니면 //reply = insertBoardReply
	 * 
	 * @RequestMapping(value="/board/reply.do", method = RequestMethod.POST) public
	 * ModelAndView reply(BoardVO board) { ModelAndView mav = new ModelAndView();
	 * if(board.getAsk_bbsno()==0) { if(board.getAsk_grpno()!=0) {
	 * service.reply(board); } }
	 * 
	 * return mav; }
	 * 
	 * public void insertBoardReply(BoardReplyVO param) { if (param.getReno() ==
	 * null || "".equals(param.getReno())) { if (param.getReparent() != null) {
	 * BoardReplyVO replyInfo = sqlSession.selectOne("selectBoard6ReplyParent",
	 * param.getReparent()); param.setRedepth(replyInfo.getRedepth());
	 * param.setReorder(replyInfo.getReorder() + 1);
	 * sqlSession.selectOne("updateBoard6ReplyOrder", replyInfo); } else { Integer
	 * reorder = sqlSession.selectOne("selectBoard6ReplyMaxOrder",
	 * param.getBrdno()); param.setReorder(reorder); }
	 * 
	 * sqlSession.insert("insertBoard6Reply", param); } else {
	 * sqlSession.insert("updateBoard6Reply", param); } }
	 */
}
