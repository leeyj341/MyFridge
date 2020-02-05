package maeggi.seggi.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	@Qualifier("boardDao")
	BoardDAO dao;
	
	@Override
	public List<BoardVO> listall() {
		return dao.listall();
	}

	@Override
	public int insert(BoardVO board) {
		return dao.insert(board);
	}

	@Override
	public BoardVO read(String board_no) {
		return dao.read(board_no);
	}

	@Override
	public int update(BoardVO board) {
		return dao.update(board);
	}

	@Override
	public int delete(String board_no) {
		return dao.delete(board_no);
	}

}
