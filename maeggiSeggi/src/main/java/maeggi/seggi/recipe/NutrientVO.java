package maeggi.seggi.recipe;

public class NutrientVO {
	private String food_id;
	private String name;
	private String sort;
	private String weight;
	private String protein;
	private String dietary_fiber;
	private String vitaminb;
	private String vitaminc;
	private String ca;
	private String fe;
	private String mg;
	private String zn;
	private String omega3;
	private String amino;
	private String dname;
	public NutrientVO() {
		
	}
	
	public NutrientVO(String food_id, String name, String sort, String weight, String protein, String dietary_fiber,
			String vitaminb, String vitaminc, String ca, String fe, String mg, String zn, String omega3, String amino,
			String dname) {
		super();
		this.food_id = food_id;
		this.name = name;
		this.sort = sort;
		this.weight = weight;
		this.protein = protein;
		this.dietary_fiber = dietary_fiber;
		this.vitaminb = vitaminb;
		this.vitaminc = vitaminc;
		this.ca = ca;
		this.fe = fe;
		this.mg = mg;
		this.zn = zn;
		this.omega3 = omega3;
		this.amino = amino;
		this.dname = dname;
	}
	
	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getFood_id() {
		return food_id;
	}
	public void setFood_id(String food_id) {
		this.food_id = food_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getProtein() {
		return protein;
	}
	public void setProtein(String protein) {
		this.protein = protein;
	}
	public String getDietary_fiber() {
		return dietary_fiber;
	}
	public void setDietary_fiber(String dietary_fiber) {
		this.dietary_fiber = dietary_fiber;
	}
	public String getVitaminb() {
		return vitaminb;
	}
	public void setVitaminb(String vitaminb) {
		this.vitaminb = vitaminb;
	}
	public String getVitaminc() {
		return vitaminc;
	}
	public void setVitaminc(String vitaminc) {
		this.vitaminc = vitaminc;
	}
	public String getCa() {
		return ca;
	}
	public void setCa(String ca) {
		this.ca = ca;
	}
	public String getFe() {
		return fe;
	}
	public void setFe(String fe) {
		this.fe = fe;
	}
	public String getMg() {
		return mg;
	}
	public void setMg(String mg) {
		this.mg = mg;
	}
	public String getZn() {
		return zn;
	}
	public void setZn(String zn) {
		this.zn = zn;
	}
	public String getOmega3() {
		return omega3;
	}
	public void setOmega3(String omega3) {
		this.omega3 = omega3;
	}
	public String getAmino() {
		return amino;
	}
	public void setAmino(String amino) {
		this.amino = amino;
	}
	
	
}
