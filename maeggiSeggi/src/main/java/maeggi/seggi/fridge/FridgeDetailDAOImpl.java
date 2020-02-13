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
	public List<FridgeDetailVO> selectAll(String refrigerator_id) {
		return session.selectList("maeggi.seggi.fridge.selectAll", refrigerator_id);
	}

	@Override
	public int insertFridge(FridgeDetailVO vo) {
		return session.insert("maeggi.seggi.fridge.insertFridgeDetail", vo);
	}
	
	@Override
	public int deleteFridge(FridgeDetailVO vo) {
		return session.delete("maeggi.seggi.fridge.deleteFridgeDetail", vo);
	}

}
