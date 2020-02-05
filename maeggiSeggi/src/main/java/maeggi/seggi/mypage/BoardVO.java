package maeggi.seggi.mypage;

import java.sql.Date;

public class BoardVO {
	String ask_id;
	String ask_title;
	String ask_content;
	Date ask_regdate;
	String ask_mgr_reply;
	String member_id;
	public BoardVO() {
		
	}
	public BoardVO(String ask_id, String ask_title, String ask_content, Date ask_regdate, String ask_mgr_reply,
			String member_id) {
		super();
		this.ask_id = ask_id;
		this.ask_title = ask_title;
		this.ask_content = ask_content;
		this.ask_regdate = ask_regdate;
		this.ask_mgr_reply = ask_mgr_reply;
		this.member_id = member_id;
	}
	public String getAsk_id() {
		return ask_id;
	}
	public void setAsk_id(String ask_id) {
		this.ask_id = ask_id;
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
	public String getAsk_mgr_reply() {
		return ask_mgr_reply;
	}
	public void setAsk_mgr_reply(String ask_mgr_reply) {
		this.ask_mgr_reply = ask_mgr_reply;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "BoardVO [ask_id=" + ask_id + ", ask_title=" + ask_title + ", ask_content=" + ask_content
				+ ", ask_regdate=" + ask_regdate + ", ask_mgr_reply=" + ask_mgr_reply + ", member_id=" + member_id
				+ "]";
	}

	

	
}
