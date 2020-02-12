package maeggi.seggi.fridge;

import java.util.List;

public interface FridgeDetailService {
	List<FridgeDetailVO> selectAll();
	int insertFridge(FridgeDetailVO vo);
}
