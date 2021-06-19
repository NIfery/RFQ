package com.customer.model;

import java.sql.Timestamp;

public class CustomerVO {
	private int no;
	private String userid;
	private String title;
	private String content;
	private Timestamp regdate;
	private String answer;
	private String answer_flag;
	
	public CustomerVO() {
		super();
	}

	public CustomerVO(int no, String userid, String title, String content, Timestamp regdate, String answer, String answer_flag) {
		super();
		this.no = no;
		this.userid = userid;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.answer = answer;
		this.answer_flag = answer_flag;
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

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnswer_flag() {
		return answer_flag;
	}

	public void setAnswer_flag(String answer_flag) {
		this.answer_flag = answer_flag;
	}

	@Override
	public String toString() {
		return "CustomerVO [no=" + no + ", userid=" + userid + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", answer=" + answer + ", answer_flag=" + answer_flag + "]";
	}

	
	
}
