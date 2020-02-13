package maeggi.seggi.recipeFavorite;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class RecipeFavoriteServiceImpl implements RecipeFavoriteService {
	@Autowired
	@Qualifier("favoriteDAO")
	RecipeFavoriteDAO dao;
	
	@Override
	public int insertFavorite(RecipeFavoriteVO vo) {
		return dao.insertFavorite(vo);
	}
	
	@Override
	public int deleteFavorite(RecipeFavoriteVO vo) {
		// TODO Auto-generated method stub
		return dao.deleteFavorite(vo);
	}
	
	@Override
	public List<RecipeFavoriteVO> selectAllFavorites(String member_id) {
		return dao.selectAllFavorites(member_id);
	}
}
