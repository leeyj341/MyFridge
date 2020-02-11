package maeggi.seggi.mealPlanner;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mealPlannerDAOImpl implements mealPlannerDAO{
	@Autowired
	SqlSession SqlSession;
	
	@Override
	public mealPlannerVO read(mealPlannerVO meal) {
		return SqlSession.selectOne("maeggi.seggi.reply.mealPlan", meal);
	}
	
	
}