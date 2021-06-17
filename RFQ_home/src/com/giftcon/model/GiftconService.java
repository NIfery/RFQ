package com.giftcon.model;

import java.sql.SQLException;

public class GiftconService {
	private GiftconDAO giftconDao;
	
	public GiftconService() {
		giftconDao = new GiftconDAO();
	}
	
	public GiftconVO selectByNo(int no) throws SQLException {
		return giftconDao.selectByNo(no);
	}
}
