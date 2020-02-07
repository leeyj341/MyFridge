package maeggi.seggi.fridge;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fridgeDetailDAO")
public class FridgeDetailDAOImpl implements FridgeDetailDAO {
	@Autowired
	SqlSession session;
	
	@Override
	public List<FridgeDetailVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertFridge(FridgeDetailVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
