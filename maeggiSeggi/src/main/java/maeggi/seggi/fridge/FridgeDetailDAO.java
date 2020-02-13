package maeggi.seggi.fridge;

import java.util.List;

public interface FridgeDetailDAO {
	List<FridgeDetailVO> selectAll(String refrigerator_id);
	int insertFridge(FridgeDetailVO vo);
	int deleteFridge(FridgeDetailVO vo);
}
