package maeggi.seggi.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import maeggi.seggi.loginandcustomer.memberService;
import maeggi.seggi.loginandcustomer.memberVO;
import maeggi.seggi.reply.replyService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	@Autowired
	replyService replyService;
	@Autowired
	memberService mservice;

	// 게시글 전체 목록을 보여주는 기능
	@RequestMapping(value = "/board/list.do")
	public ModelAndView listall(BoardVO board,HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		HttpSession ses = req.getSession(false); //로그인이 안되어 있으면 NULL값 반환, 로그인이 되어있으면 ses에 로그인 세션을 발급.
		if(ses!=null) {
			memberVO user=(memberVO) ses.getAttribute("loginuser"); //top.jsp에 올려놓은 로그인 세션을 loginuser로 받아서 user로 저장
			if(user!=null) {
				board.setMember_id(user.getMember_id());
			}
		}
		List<BoardVO> list = service.listall(board);
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
	
	
	
	
	//회원정보 수정 View
	@RequestMapping(value = "/board/infoupdate.do", method = RequestMethod.GET)
	public String updateView(memberVO user) {
		return "mypage/information/update";
	}
	//회원정보 수정 POST
	@RequestMapping(value = "/board/infoupdate.do", method = RequestMethod.POST)
	public String update(memberVO user, HttpSession session) {
		System.out.println("유저:"+user);
		mservice.update(user);
		session.invalidate();
		return "redirect:/loginandcustomer/login.do";
	}
	
			
	//회원의 point, point내역 보여주기
	@RequestMapping(value = "/board/mypoint.do")
	public ModelAndView mypage_mypoint(PointVO point,HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		HttpSession ses = req.getSession(false);
		if(ses!=null) {
			memberVO user=(memberVO) ses.getAttribute("loginuser");
			if(user!=null) {
				point.setMember_id((user.getMember_id()));//pointVO에 로그인한 회원의 id를 set.
			}
		}
		List<PointVO> mypoint = service.pointListall(point);
		int pointsum = service.pointsum(point);
		System.out.println("mypoint"+mypoint);
		System.out.println("pointsum"+pointsum);
		mav.addObject("mypoint", mypoint);
		mav.addObject("pointsum", pointsum);
		mav.setViewName("mypage/mypoint");
		return mav;
	}
			
			
			
	/*// 게시글 전체 목록을 보여주는 기능
	@RequestMapping(value = "board/mypoint.do")
	public ModelAndView mypage_mypoint(BoardVO board,HttpServletRequest req, PointVO point) {
		ModelAndView mav = new ModelAndView();
		HttpSession ses = req.getSession(false);
		if(ses!=null) {
			memberVO user=(memberVO) ses.getAttribute("loginuser");
			if(user!=null) {
				board.setMember_id(user.getMember_id());
			}
		}
		List<PointVO> point= service.pointListall(point);
		System.out.println(list);
		mav.addObject("list", list);
		mav.setViewName("mypage/ask");
		return mav;
	}*/

	
	
	
	
	
	@RequestMapping("/board/main.do")
	public String mypage_main() {
	
		return "mypage/main";
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
