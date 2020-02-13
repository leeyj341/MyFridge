package maeggi.seggi.fridge;

import java.util.List;

public interface FridgeDAO {
	List<FridgeVO> selectMyFridgeByName(String id);
	int insertFridge(FridgeVO vo);
	int deleteFridge(FridgeVO vo);
	int updateMain(FridgeVO vo);
}
