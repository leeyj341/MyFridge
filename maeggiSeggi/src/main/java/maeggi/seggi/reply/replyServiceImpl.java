package maeggi.seggi.reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class replyServiceImpl implements replyService {
	@Autowired
	@Qualifier("replyDao")
	replyDAO dao;
	
	@Override
	public List<replyBoardVO> listall() {
		return dao.listall();
	}

	@Override
	public int insert(replyBoardVO board) {
		return dao.insert(board);
	}

	@Override
	public replyBoardVO read(String board_no) {
		return dao.read(board_no);
	}

	@Override
	public int update(replyBoardVO board) {
		return dao.update(board);
	}

	@Override
	public int delete(String board_no) {
		return dao.delete(board_no);
	}

	
	//======================== 답변형 게시판 ========================
	@Override
	public void reply(replyBoardVO board) {
		dao.reply(board);
		
	}

	@Override
	public List<replyBoardVO> list_reply() {
		return dao.list_reply();
	}

}
