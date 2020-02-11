package maeggi.seggi.fridge;

import java.util.List;

public interface FridgeDetailDAO {
	List<FridgeDetailVO> selectAll();
	int insertFridge(FridgeDetailVO vo);
}
