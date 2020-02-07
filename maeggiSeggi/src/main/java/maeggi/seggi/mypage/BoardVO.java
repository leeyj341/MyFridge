package maeggi.seggi.mypage;

import java.sql.Date;

public class BoardVO {
	int ask_id;
	String ask_title;
	String ask_content;
	Date ask_regdate;
	int ask_bbsno;  //reno
	int ask_grpno;	//reparent
	int ask_grpord;	//reorder
	int ask_depth; //redepth
	String writer;
	String member_id;
	public BoardVO() {
		
	}
	public BoardVO(int ask_id, String ask_title, String ask_content, Date ask_regdate, int ask_bbsno, int ask_grpno,
			int ask_grpord, int ask_depth, String writer, String member_id) {
		super();
		this.ask_id = ask_id;
		this.ask_title = ask_title;
		this.ask_content = ask_content;
		this.ask_regdate = ask_regdate;
		this.ask_bbsno = ask_bbsno;
		this.ask_grpno = ask_grpno;
		this.ask_grpord = ask_grpord;
		this.ask_depth = ask_depth;
		this.writer = writer;
		this.member_id = member_id;
	}
	public int getAsk_id() {
		return ask_id;
	}
	public void setAsk_id(int ask_id) {
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
	public int getAsk_bbsno() {
		return ask_bbsno;
	}
	public void setAsk_bbsno(int ask_bbsno) {
		this.ask_bbsno = ask_bbsno;
	}
	public int getAsk_grpno() {
		return ask_grpno;
	}
	public void setAsk_grpno(int ask_grpno) {
		this.ask_grpno = ask_grpno;
	}
	public int getAsk_grpord() {
		return ask_grpord;
	}
	public void setAsk_grpord(int ask_grpord) {
		this.ask_grpord = ask_grpord;
	}
	public int getAsk_depth() {
		return ask_depth;
	}
	public void setAsk_depth(int ask_depth) {
		this.ask_depth = ask_depth;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
				+ ", ask_regdate=" + ask_regdate + ", ask_bbsno=" + ask_bbsno + ", ask_grpno=" + ask_grpno
				+ ", ask_grpord=" + ask_grpord + ", ask_depth=" + ask_depth + ", writer=" + writer + ", member_id="
				+ member_id + "]";
	}
	
}
