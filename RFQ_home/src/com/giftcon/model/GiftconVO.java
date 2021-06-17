package com.giftcon.model;

import java.sql.Timestamp;

public class GiftconVO {
	private int no;
	private String category;
	private String name;
	private int price;
	private String detail;
	private Timestamp exdate;
	private String image;
	private String seller;
	
	public GiftconVO() {
		super();
	}

	public GiftconVO(int no, String category, String name, int price, String detail, 
			Timestamp exdate, String image, String seller) {
		super();
		this.no = no;
		this.category = category;
		this.name = name;
		this.price = price;
		this.detail = detail;
		this.exdate = exdate;
		this.image = image;
		this.seller = seller;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	@Override
	public String toString() {
		return "GiftconVO [no=" + no + ", category=" + category + ", name=" + name 
				+ ", price=" + price + ", detail=" + detail + ", exdate=" + exdate 
				+ ", image=" + image + ", seller=" + seller + "]";
	}

	
}
