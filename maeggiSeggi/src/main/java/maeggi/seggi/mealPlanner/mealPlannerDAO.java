package maeggi.seggi.mealPlanner;

public interface mealPlannerDAO {
	mealPlannerVO read(mealPlannerVO meal);
	int insert(mealPlannerVO meal);
}