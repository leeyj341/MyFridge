package maeggi.seggi.mealPlanner;

public interface mealPlannerService {
	mealPlannerVO read(mealPlannerVO meal);
	int insert(mealPlannerVO meal);
}
