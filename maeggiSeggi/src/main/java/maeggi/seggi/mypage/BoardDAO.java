package maeggi.seggi.mypage;

import java.util.List;

public interface BoardDAO {
	List<BoardVO> listall();	//문의사항 전체보기
	List<BoardVO> list_reply(); //댓글 전체보기
	int insert(BoardVO board);
	//BoardVO read(String board_no);
	int update(BoardVO board);
	int delete(String board_no);
	//BoardVO update_board(BoardVO board); //답변형 게시판
	void reply(BoardVO board);
	BoardVO read(int askno); //1대1문의 글 자세히 보기
	
}
