package maeggi.seggi.mypage;

import java.util.List;

public interface BoardService {
	List<BoardVO> listall(); //문의사항 전체보기
	List<BoardVO> list_reply(); //댓글 전체보기
	BoardVO updatelist(BoardVO board); // 수정화면 보여주기
	int insert(BoardVO board);
	BoardVO read(String board_no);
	int update(BoardVO board);
	
	void reply(BoardVO board);
	BoardVO read(int askno); //문의 글 상세보기 
	void delete(int askno);
}
