package maeggi.seggi.recipe;

import java.sql.Date;

public class RecipeVO {
	private String recipe_id;
	private String name;
	private String content_intro;
	private String recipe_code;
	private String recipe_category;
	private int cook_time;
	private int kcal;
	private int amount_per_person;
	private String cook_level;
	private String ing_category;
	private int price;
	private String img_url_main;
	private String img_url_sub;
	private int hit;
	private int like_num;
	private Date register_date;
	private String member_id;
	
	public RecipeVO() {
		
	}

	public RecipeVO(String recipe_id, String name, String content_intro, String recipe_code, String recipe_category,
			int cook_time, int kcal, int amount_per_person, String cook_level, String ing_category, int price,
			String img_url_main, String img_url_sub, int hit, int like_num, Date register_date, String member_id) {
		super();
		this.recipe_id = recipe_id;
		this.name = name;
		this.content_intro = content_intro;
		this.recipe_code = recipe_code;
		this.recipe_category = recipe_category;
		this.cook_time = cook_time;
		this.kcal = kcal;
		this.amount_per_person = amount_per_person;
		this.cook_level = cook_level;
		this.ing_category = ing_category;
		this.price = price;
		this.img_url_main = img_url_main;
		this.img_url_sub = img_url_sub;
		this.hit = hit;
		this.like_num = like_num;
		this.register_date = register_date;
		this.member_id = member_id;
	}

	@Override
	public String toString() {
		return "RecipeVO [recipe_id=" + recipe_id + ", name=" + name + ", content_intro=" + content_intro
				+ ", recipe_code=" + recipe_code + ", recipe_category=" + recipe_category + ", cook_time=" + cook_time
				+ ", kcal=" + kcal + ", amount_per_person=" + amount_per_person + ", cook_level=" + cook_level
				+ ", ing_category=" + ing_category + ", price=" + price + ", img_url_main=" + img_url_main
				+ ", img_url_sub=" + img_url_sub + ", hit=" + hit + ", like_num=" + like_num + ", register_date="
				+ register_date + ", member_id=" + member_id + "]";
	}

	public String getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent_intro() {
		return content_intro;
	}

	public void setContent_intro(String content_intro) {
		this.content_intro = content_intro;
	}

	public String getRecipe_code() {
		return recipe_code;
	}

	public void setRecipe_code(String recipe_code) {
		this.recipe_code = recipe_code;
	}

	public String getRecipe_category() {
		return recipe_category;
	}

	public void setRecipe_category(String recipe_category) {
		this.recipe_category = recipe_category;
	}

	public int getCook_time() {
		return cook_time;
	}

	public void setCook_time(int cook_time) {
		this.cook_time = cook_time;
	}

	public int getKcal() {
		return kcal;
	}

	public void setKcal(int kcal) {
		this.kcal = kcal;
	}

	public int getAmount_per_person() {
		return amount_per_person;
	}

	public void setAmount_per_person(int amount_per_person) {
		this.amount_per_person = amount_per_person;
	}

	public String getCook_level() {
		return cook_level;
	}

	public void setCook_level(String cook_level) {
		this.cook_level = cook_level;
	}

	public String getIng_category() {
		return ing_category;
	}

	public void setIng_category(String ing_category) {
		this.ing_category = ing_category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImg_url_main() {
		return img_url_main;
	}

	public void setImg_url_main(String img_url_main) {
		this.img_url_main = img_url_main;
	}

	public String getImg_url_sub() {
		return img_url_sub;
	}

	public void setImg_url_sub(String img_url_sub) {
		this.img_url_sub = img_url_sub;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getLike_num() {
		return like_num;
	}

	public void setLike_num(int like_num) {
		this.like_num = like_num;
	}

	public Date getRegister_date() {
		return register_date;
	}

	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	
}
