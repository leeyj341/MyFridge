package maeggi.seggi.mypage;

import java.util.List;

public interface BoardDAO {
	List<BoardVO> listall();
	int insert(BoardVO board);
	BoardVO read(String board_no);
	int update(BoardVO board);
	int delete(String board_no);
}
