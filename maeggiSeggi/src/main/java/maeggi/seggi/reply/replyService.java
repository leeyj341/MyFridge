package maeggi.seggi.reply;

import java.util.List;

public interface replyService {
	List<replyBoardVO> listall(); //문의사항 전체보기
	List<replyBoardVO> list_reply(); //댓글 전체보기
	int insert(replyBoardVO board);
	replyBoardVO read(String board_no);
	int update(replyBoardVO board);
	int delete(String board_no);
	void reply(replyBoardVO board);
}
