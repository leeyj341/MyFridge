package maeggi.seggi.fridge;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fridgeDetailDAO")
public class FridgeDetailDAOImpl implements FridgeDetailDAO {
	@Autowired
	SqlSession session;
	
	@Override
	public List<HashMap<String, String>> selectAll(String refrigerator_id) {
		return session.selectList("maeggi.seggi.fridge.selectAll", refrigerator_id);
	}

	@Override
	public int insertFridge(String ingredient_id, String refrigerator_id, String ig_amount) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ingredient_id", ingredient_id);
		map.put("refrigerator_id", refrigerator_id);
		map.put("ig_amount", ig_amount);
		return session.insert("maeggi.seggi.fridge.insertFridgeDetail", map);
	}
	
	@Override
	public int deleteFridge(FridgeDetailVO vo) {
		return session.delete("maeggi.seggi.fridge.deleteFridgeDetail", vo);
	}

}
