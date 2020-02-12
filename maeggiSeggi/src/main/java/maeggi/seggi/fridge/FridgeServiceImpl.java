package maeggi.seggi.fridge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FridgeServiceImpl implements FridgeService {
	@Autowired
	FridgeDAO dao;
	
	@Override
	public List<FridgeVO> selectMyFridgeByName(String id) {
		return dao.selectMyFridgeByName(id);
	}
	
	@Override
	public int insertFridge(FridgeVO vo) {
		return dao.insertFridge(vo);
	}
	
	@Override
	public int updateMain(FridgeVO vo) {
		return dao.updateMain(vo);
	}
}
