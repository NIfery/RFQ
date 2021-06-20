package com.BuyLIst.model;

public class BuyListVO {
	private int no;
	private String userid;
	private int outPoint;
	private int giftconNo;
	
	public BuyListVO() {
		super();
	}

	public BuyListVO(int no, String userid, int outPoint, int giftconNo) {
		super();
		this.no = no;
		this.userid = userid;
		this.outPoint = outPoint;
		this.giftconNo = giftconNo;
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

	public int getOutPoint() {
		return outPoint;
	}

	public void setOutPoint(int outPoint) {
		this.outPoint = outPoint;
	}

	public int getGiftconNo() {
		return giftconNo;
	}

	public void setGiftconNo(int giftconNo) {
		this.giftconNo = giftconNo;
	}

	@Override
	public String toString() {
		return "BuyListVO [no=" + no + ", userid=" + userid + ", outPoint=" + outPoint 
				+ ", giftconNo=" + giftconNo + "]";
	}
	
	

	
}