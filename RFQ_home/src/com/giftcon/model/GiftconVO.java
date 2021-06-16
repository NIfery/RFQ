package com.giftcon.model;

import java.sql.Timestamp;

public class GiftconVO {
	private int no;
	private String category;
	private String name;
	private int price;
	private String detail;
	private Timestamp exdate;
	
	public GiftconVO() {
		super();
	}

	public GiftconVO(int no, String category, String name, int price, String detail, Timestamp exdate) {
		super();
		this.no = no;
		this.category = category;
		this.name = name;
		this.price = price;
		this.detail = detail;
		this.exdate = exdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Timestamp getExdate() {
		return exdate;
	}

	public void setExdate(Timestamp exdate) {
		this.exdate = exdate;
	}

	@Override
	public String toString() {
		return "GiftconVO [no=" + no + ", category=" + category + ", name=" + name + ", price=" + price + ", detail="
				+ detail + ", exdate=" + exdate + "]";
	}
}
