package com.quiz.model;

public class GetPointVO {
	private String userid;
    private int getPoint;
	
    public GetPointVO() {
		super();
	}
	
    public GetPointVO(String userid, int getPoint) {
		super();
		this.userid = userid;
		this.getPoint = getPoint;
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
	
    @Override
	public String toString() {
		return "GetPointVO [userid=" + userid + ", getPoint=" + getPoint + "]";
	}
    
    
}
