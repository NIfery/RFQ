package com.quiz.model;

public class GetPointVO {
	private String userid;
    private int getPoint;
	private int addList;
	
    public GetPointVO() {
		super();
	}

	public GetPointVO(String userid, int getPoint, int addList) {
		super();
		this.userid = userid;
		this.getPoint = getPoint;
		this.addList = addList;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getGetPoint() {
		return getPoint;
	}

	public void setGetPoint(int getPoint) {
		this.getPoint = getPoint;
	}

	public int getAddList() {
		return addList;
	}

	public void setAddList(int addList) {
		this.addList = addList;
	}

	@Override
	public String toString() {
		return "GetPointVO [userid=" + userid + ", getPoint=" + getPoint + ", addList=" + addList + "]";
	}
	
   
    
    
}
