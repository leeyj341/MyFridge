package maeggi.seggi.mealPlanner;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mealPlannerDAOImpl implements mealPlannerDAO{
	@Autowired
	SqlSession SqlSession;
	
	@Override
	public List<mealPlannerVO> mealSelect(mealPlannerVO meal) {
		return SqlSession.selectList("maeggi.seggi.reply.mealPlan", meal);
	}

	@Override
	public int insert(mealPlannerVO meal) {
		return SqlSession.insert("maeggi.seggi.reply.mealPlanInsert", meal);
	}
	
	
}