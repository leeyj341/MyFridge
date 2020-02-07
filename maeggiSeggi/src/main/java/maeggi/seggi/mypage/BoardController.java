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
	
	//게시글을 작성하기 위한 뷰를 response할 메소드 
	@RequestMapping(value="/board/insert.do",method=RequestMethod.GET)
	public String insertView() {
		return "mypage/ask/write";
	}
	
	//입력한 글을 실제 db에 넣는 메소드
	@RequestMapping(value = "/board/insert.do" ,method = RequestMethod.POST)
	public String insert(BoardVO board) {
		service.insert(board);
		return "redirect:/board/list.do";
		
	}
	
	//제목 눌러서 글 상세보기
	@RequestMapping("/board/read.do")
	public ModelAndView read(String board_no){
		ModelAndView mav = new ModelAndView();
		BoardVO read = service.read(board_no);
		mav.addObject("read", read);
		mav.setViewName("mypage/ask/title");
		return mav;
	}
	
	//글 수정
	@RequestMapping(value = "/board/update.do" ,method = RequestMethod.POST)
	public String update(BoardVO board) {
		return "redirect:/board/list.do";
	}
	
	//글 삭제
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
	
	//bbsno이 0이고 grpno가 0이 아니면
	//reply = insertBoardReply
	@RequestMapping(value="/board/reply.do", method = RequestMethod.POST)
	public ModelAndView reply(BoardVO board) {
		ModelAndView mav = new ModelAndView();
		if(board.getAsk_bbsno()==0) {
			if(board.getAsk_grpno()!=0) {
				service.reply(board);
			}
		}
		
		return mav;
	}
	
	/*  public void insertBoardReply(BoardReplyVO param) {
	        if (param.getReno() == null || "".equals(param.getReno())) {
	            if (param.getReparent() != null) {
	                BoardReplyVO replyInfo = sqlSession.selectOne("selectBoard6ReplyParent", param.getReparent());
	                param.setRedepth(replyInfo.getRedepth());
	                param.setReorder(replyInfo.getReorder() + 1);
	                sqlSession.selectOne("updateBoard6ReplyOrder", replyInfo);
	            } else {
	                Integer reorder = sqlSession.selectOne("selectBoard6ReplyMaxOrder", param.getBrdno());
	                param.setReorder(reorder);
	            }
	           
	            sqlSession.insert("insertBoard6Reply", param);
	        } else {
	            sqlSession.insert("updateBoard6Reply", param);
	        }
	    }*/


	
	
	
	
}
