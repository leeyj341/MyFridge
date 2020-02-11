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
