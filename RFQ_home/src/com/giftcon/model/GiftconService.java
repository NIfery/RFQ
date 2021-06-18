package com.giftcon.model;

import java.sql.SQLException;
import java.util.List;

public class GiftconService {
	private GiftconDAO giftconDao;
	
	public GiftconService() {
		giftconDao = new GiftconDAO();
	}
	
	public GiftconVO selectByNo(int no) throws SQLException {
		return giftconDao.selectByNo(no);
	}
	
	public List<GiftconVO> selectAll() throws SQLException {
		return giftconDao.selectAll();
	}
	
}
