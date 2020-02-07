package maeggi.seggi.reply;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class replyController {
	@Autowired
	replyService service;
	//======================= 답변형 게시판 =========================
	//댓글 전체보기
	@RequestMapping("/board/list_reply.do")
	public ModelAndView list_reply(){
		ModelAndView mav = new ModelAndView();
		List<replyBoardVO> list_reply = service.list_reply();
		mav.addObject("list_reply", list_reply);
		mav.setViewName("mypage/ask/title");
		return mav;
	}
	
	@RequestMapping(value="/board/title.do" , method = RequestMethod.GET)
	public String preUpdate(replyBoardVO board) {
		service.update(board);
		return "redirect:/board/title.do";
	}
	
	@RequestMapping(value="/board/title.do", method = RequestMethod.POST)
	public String updateGrpord(replyBoardVO board) {
		service.reply(board);
		return "redirect:/board/title.do";
	}
	
	/*//bbsno이 0이고 grpno가 0이 아니면
	//reply = insertBoardReply
	@RequestMapping(value="/board/reply.do", method = RequestMethod.POST)
	public ModelAndView reply(replyBoardVO board) {
		ModelAndView mav = new ModelAndView();
		if(board.getAsk_bbsno()==0) {
			if(board.getAsk_grpno()!=0) {
				service.reply(board);
			}
		}
		
		return mav;
	}*/
	
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
