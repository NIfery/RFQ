package com.customer.model;

import java.sql.Timestamp;

public class CustomerVO {
	private int no;
	private String userid;
	private String title;
	private String content;
	private Timestamp regdate;
	
	public CustomerVO() {
		super();
	}

	public CustomerVO(int no, String userid, String title, String content, Timestamp regdate) {
		super();
		this.no = no;
		this.userid = userid;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "CustomerVO [no=" + no + ", userid=" + userid + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + "]";
	}
	
	
}
