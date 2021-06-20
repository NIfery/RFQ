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
	
	public List<GiftconVO> selectRelationship(String category) throws SQLException {
		return giftconDao.selectRelationship(category);
	}
	
	public List<GiftconVO> selectRecommend(String recommend) throws SQLException {
		return giftconDao.selectRecommend(recommend);
	}
	
	public List<GiftconVO> selectName(String name) throws SQLException {
		return giftconDao.selectName(name);
	}
	
	public List<GiftconVO> selectSearch( String category, String keyword) throws SQLException {
		return giftconDao.selectSearch(category, keyword);
	}
}
