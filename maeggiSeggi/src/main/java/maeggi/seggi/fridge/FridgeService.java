package maeggi.seggi.fridge;

import java.util.List;

public interface FridgeService {
	List<FridgeVO> selectMyFridgeByName(String id);
	int insertFridge(FridgeVO vo);
}
