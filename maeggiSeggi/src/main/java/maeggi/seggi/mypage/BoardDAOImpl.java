package maeggi.seggi.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDao")
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BoardVO> listall() {
		return sqlSession.selectList("maeggi.seggi.mypage.listall");
	}

	@Override
	public int insert(BoardVO board) {
		return sqlSession.insert("maeggi.seggi.mypage.insert",board);
	}

	@Override
	public BoardVO read(int askno) {
		return sqlSession.selectOne("maeggi.seggi.mypage.read", askno);
	}

	@Override
	public int update(BoardVO board) {
		return sqlSession.update("maeggi.seggi.mypage.update", board);
	}
	
	/*//답변형 게시판
	@Override
	public BoardVO update_board(BoardVO board) {
		return sqlSession.update(statement, parameter)
	}*/
	
	@Override
	public int delete(String board_no) {
		return sqlSession.delete("maeggi.seggi.mypage.update",board_no);
	}

	//============================= 답변형 게시판 ===========================
	@Override
	public void reply(BoardVO board) {
		//transaction처리
		//update
		sqlSession.update("maeggi.seggi.mypage.updateGrpord_board", board);
		//insert
		sqlSession.insert("maeggi.seggi.mypage.reply", board);
		
		
	}
	//댓글 전체 목록
	@Override
	public List<BoardVO> list_reply() {
		return sqlSession.selectList("maeggi.seggi.mypage.list_reply");
	}


}
