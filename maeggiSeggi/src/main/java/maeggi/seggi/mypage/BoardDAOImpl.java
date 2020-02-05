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
	public BoardVO read(String board_no) {
		return sqlSession.selectOne("maeggi.seggi.mypage.read", board_no);
	}

	@Override
	public int update(BoardVO board) {
		return sqlSession.update("maeggi.seggi.mypage.update", board);
	}

	@Override
	public int delete(String board_no) {
		return sqlSession.delete("maeggi.seggi.mypage.update",board_no);
	}

}
