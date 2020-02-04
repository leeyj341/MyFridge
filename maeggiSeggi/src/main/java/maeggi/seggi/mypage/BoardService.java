package maeggi.seggi.mypage;

import java.util.List;

public interface BoardService {
	List<BoardVO> listall();
	int insert(BoardVO board);
	BoardVO read(String board_no);
	int update(BoardVO board);
	int delete(String board_no);
}
