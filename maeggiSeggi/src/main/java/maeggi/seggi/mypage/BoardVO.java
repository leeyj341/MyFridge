package maeggi.seggi.mypage;

import java.sql.Date;

public class BoardVO {
	int askno;
	String ask_title;
	String ask_content;
	Date ask_regdate;
	String member_id;
	public BoardVO() {
		
	}
	public BoardVO(int askno, String ask_title, String ask_content, Date ask_regdate, String member_id) {
		super();
		this.askno = askno;
		this.ask_title = ask_title;
		this.ask_content = ask_content;
		this.ask_regdate = ask_regdate;
		this.member_id = member_id;
	}
	public int getAskno() {
		return askno;
	}
	public void setAskno(int askno) {
		this.askno = askno;
	}
	public String getAsk_title() {
		return ask_title;
	}
	public void setAsk_title(String ask_title) {
		this.ask_title = ask_title;
	}
	public String getAsk_content() {
		return ask_content;
	}
	public void setAsk_content(String ask_content) {
		this.ask_content = ask_content;
	}
	public Date getAsk_regdate() {
		return ask_regdate;
	}
	public void setAsk_regdate(Date ask_regdate) {
		this.ask_regdate = ask_regdate;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "BoardVO [askno=" + askno + ", ask_title=" + ask_title + ", ask_content=" + ask_content
				+ ", ask_regdate=" + ask_regdate + ", member_id=" + member_id + "]";
	}
	
	
}
