package maeggi.seggi.fridge;

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
	public List<FridgeDetailVO> selectAll(String refrigerator_id) {
		return dao.selectAll(refrigerator_id);
	}
	
	@Override
	public int insertFridge(FridgeDetailVO vo) {
		return dao.insertFridge(vo);
	}
	
	@Override
	public int deleteFridge(FridgeDetailVO vo) {
		return dao.deleteFridge(vo);
	}
}
