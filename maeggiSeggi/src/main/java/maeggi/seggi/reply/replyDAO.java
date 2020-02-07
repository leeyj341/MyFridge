package maeggi.seggi.reply;

import java.util.List;

public interface replyDAO {
	List<replyBoardVO> listall();	//문의사항 전체보기
	List<replyBoardVO> list_reply(); //댓글 전체보기
	int insert(replyBoardVO board);
	replyBoardVO read(String board_no);
	int update(replyBoardVO board);
	int delete(String board_no);
	//BoardVO update_board(BoardVO board); //답변형 게시판
	void reply(replyBoardVO board);
}
