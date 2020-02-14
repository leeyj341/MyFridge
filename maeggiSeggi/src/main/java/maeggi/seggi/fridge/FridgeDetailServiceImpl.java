package maeggi.seggi.fridge;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class FridgeDetailServiceImpl implements FridgeDetailService {
	@Autowired
	@Qualifier("fridgeDetailDAO")
	FridgeDetailDAO dao;
	
	@Override
	public List<HashMap<String, String>> selectAll(String refrigerator_id) {
		return dao.selectAll(refrigerator_id);
	}
	
	@Override
	public int insertFridge(String ingredient_id, String refrigerator_id, String ig_amount) {
		return dao.insertFridge(ingredient_id, refrigerator_id, ig_amount);
	}
	
	@Override
	public int deleteFridge(FridgeDetailVO vo) {
		return dao.deleteFridge(vo);
	}
}
