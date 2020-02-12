package maeggi.seggi.mealPlanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mealPlannerServiceImpl implements mealPlannerService{
	@Autowired
	mealPlannerDAO dao;

	@Override
	public mealPlannerVO read(mealPlannerVO meal) {
		return dao.read(meal);
	}

	@Override
	public int insert(mealPlannerVO meal) {
		return dao.insert(meal);
	}
	
}