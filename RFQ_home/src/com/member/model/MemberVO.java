package com.member.model;

public class MemberVO {
	private String userid;
	private String pwd;
	private String name;
	private String address;
	private String hp;
	private String zipcode;
	private String email;
	private int point;
	
	public MemberVO() {
		super();
	}

	public MemberVO(String userid, String pwd, String name, String address, String hp, String zipcode, String email,
			int point) {
		super();
		this.userid = userid;
		this.pwd = pwd;
		this.name = name;
		this.address = address;
		this.hp = hp;
		this.zipcode = zipcode;
		this.email = email;
		this.point = point;
	}
	
	public MemberVO(int point) {
		super();
		this.point=point;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", address=" + address + ", hp=" + hp
				+ ", zipcode=" + zipcode + ", email=" + email + ", point=" + point + "]";
	}
}
