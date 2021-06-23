package com.BuyLIst.model;

public class BuyListVO {
	private int no;
	private String userid;
	private int giftconNo;
	private int outPoint;
	private int balance;
	

	public BuyListVO() {
		super();

	}

	public BuyListVO(int no, String userid, int giftconNo, int outPoint, int balance) {
		super();
		this.no = no;
		this.userid = userid;
		this.giftconNo = giftconNo;
		this.outPoint = outPoint;
		this.balance = balance;
	}
	
	public BuyListVO(int giftconNo) {
		super();
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

	public void setGiftconNo(int giftconNo) {
		this.giftconNo = giftconNo;
	}

	public int getBalance() {
		return balance;
	}

	public void setOutPoint(int outPoint) {
		this.outPoint = outPoint;
	}
	
	public int getGiftconNo() {
		return giftconNo;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "BuyListVO [no=" + no + ", userid=" + userid + ", outPoint=" + outPoint 
				+ ", giftconNo=" + giftconNo + ", balance=" + balance + "]";
	}
		
}