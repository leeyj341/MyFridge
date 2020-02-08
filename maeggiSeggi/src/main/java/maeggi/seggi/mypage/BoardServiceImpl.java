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
	public BoardVO read(int askno) {
		return dao.read(askno);
	}

	@Override
	public int update(BoardVO board) {
		return dao.update(board);
	}

	@Override
	public int delete(String board_no) {
		return dao.delete(board_no);
	}

	
	//======================== 답변형 게시판 ========================
	@Override
	public void reply(BoardVO board) {
		dao.reply(board);
		
	}

	@Override
	public List<BoardVO> list_reply() {
		return dao.list_reply();
	}

	@Override
	public BoardVO read(String board_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
