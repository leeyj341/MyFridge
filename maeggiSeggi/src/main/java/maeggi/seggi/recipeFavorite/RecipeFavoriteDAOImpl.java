package maeggi.seggi.recipeFavorite;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("favoriteDAO")
public class RecipeFavoriteDAOImpl implements RecipeFavoriteDAO {
	@Autowired
	SqlSession session;

	@Override
	public int insertFavorite(RecipeFavoriteVO vo) {
		return session.insert("maeggi.seggi.recipeFavorite.insertFavorite", vo);
	}

	@Override
	public int deleteFavorite(RecipeFavoriteVO vo) {
		return session.delete("maeggi.seggi.recipeFavorite.deleteFavorite", vo);
	}

	@Override
	public List<RecipeFavoriteVO> selectAllFavorites(String member_id) {
		return session.selectList("maeggi.seggi.recipeFavorite.selectAllFavorites", member_id);
	}

}
