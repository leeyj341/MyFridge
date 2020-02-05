package maeggi.seggi.loginandcustomer;

import java.sql.Date;

public class memberVO {
	private String member_id;
	private String pass;
	private String name;
	private int ssn;
	private int phonenum;
	private int height;
	private int weight;
	private String gender;
	private String grade;
	private int point;
	private int my_money;
	private Date regdate;
	private String mgr_id;
	
	public memberVO() {
		
	}

	public memberVO(String member_id, String pass, String name, int ssn, int phonenum, int height, int weight,
			String gender, String grade, int point, int my_money, Date regdate, String mgr_id) {
		super();
		this.member_id = member_id;
		this.pass = pass;
		this.name = name;
		this.ssn = ssn;
		this.phonenum = phonenum;
		this.height = height;
		this.weight = weight;
		this.gender = gender;
		this.grade = grade;
		this.point = point;
		this.my_money = my_money;
		this.regdate = regdate;
		this.mgr_id = mgr_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSsn() {
		return ssn;
	}

	public void setSsn(int ssn) {
		this.ssn = ssn;
	}

	public int getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(int phonenum) {
		this.phonenum = phonenum;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getMy_money() {
		return my_money;
	}

	public void setMy_money(int my_money) {
		this.my_money = my_money;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getMgr_id() {
		return mgr_id;
	}

	public void setMgr_id(String mgr_id) {
		this.mgr_id = mgr_id;
	}

	@Override
	public String toString() {
		return "memberVO [member_id=" + member_id + ", pass=" + pass + ", name=" + name + ", ssn=" + ssn + ", phonenum="
				+ phonenum + ", height=" + height + ", weight=" + weight + ", gender=" + gender + ", grade=" + grade
				+ ", point=" + point + ", my_money=" + my_money + ", regdate=" + regdate + ", mgr_id=" + mgr_id + "]";
	}
	
	
}
