package maeggi.seggi.recipeFavorite;

import java.util.List;

public interface RecipeFavoriteDAO {
	int insertFavorite(RecipeFavoriteVO vo);
	int deleteFavorite(RecipeFavoriteVO vo);
	List<RecipeFavoriteVO> selectAllFavorites(String member_id);
}
