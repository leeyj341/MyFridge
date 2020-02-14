package maeggi.seggi.fridge;

import java.util.HashMap;
import java.util.List;

public interface FridgeDetailService {
	List<HashMap<String, String>> selectAll(String refrigerator_id);
	int insertFridge(String ingredient_id, String refrigerator_id, String ig_amount);
	int deleteFridge(FridgeDetailVO vo);
}
