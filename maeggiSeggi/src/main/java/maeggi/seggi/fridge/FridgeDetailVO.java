package maeggi.seggi.fridge;

import java.sql.Date;

public class FridgeDetailVO {
	private String refrigerator_detail_id;
	private String ingredient_id;
	private int amount;
	private String unit;
	private Date expire_date_rt;
	private Date expire_date_cold;
	private Date user_expire_date;
	private Date register_date;
	private String refrigerator_id;
	
	public FridgeDetailVO() {
		// TODO Auto-generated constructor stub
	}
	public FridgeDetailVO(String refrigerator_detail_id, String ingredient_id, int amount, String unit,
			Date expire_date_rt, Date expire_date_cold, Date user_expire_date, Date register_date,
			String refrigerator_id) {
		super();
		this.refrigerator_detail_id = refrigerator_detail_id;
		this.ingredient_id = ingredient_id;
		this.amount = amount;
		this.unit = unit;
		this.expire_date_rt = expire_date_rt;
		this.expire_date_cold = expire_date_cold;
		this.user_expire_date = user_expire_date;
		this.register_date = register_date;
		this.refrigerator_id = refrigerator_id;
	}
	public String getRefrigerator_detail_id() {
		return refrigerator_detail_id;
	}
	public void setRefrigerator_detail_id(String refrigerator_detail_id) {
		this.refrigerator_detail_id = refrigerator_detail_id;
	}
	public String getIngredient_id() {
		return ingredient_id;
	}
	public void setIngredient_id(String ingredient_id) {
		this.ingredient_id = ingredient_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public Date getExpire_date_rt() {
		return expire_date_rt;
	}
	public void setExpire_date_rt(Date expire_date_rt) {
		this.expire_date_rt = expire_date_rt;
	}
	public Date getExpire_date_cold() {
		return expire_date_cold;
	}
	public void setExpire_date_cold(Date expire_date_cold) {
		this.expire_date_cold = expire_date_cold;
	}
	public Date getUser_expire_date() {
		return user_expire_date;
	}
	public void setUser_expire_date(Date user_expire_date) {
		this.user_expire_date = user_expire_date;
	}
	public Date getRegister_date() {
		return register_date;
	}
	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}
	public String getRefrigerator_id() {
		return refrigerator_id;
	}
	public void setRefrigerator_id(String refrigerator_id) {
		this.refrigerator_id = refrigerator_id;
	}
	
	
	
}
