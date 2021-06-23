package com.BuyLIst.model;

import java.sql.SQLException;
import java.util.List;

public class BuyListService {
	private BuyListDAO dao;

	public BuyListService() {
		dao=new BuyListDAO();
	}
	
	public int RunPayment(BuyListVO vo) throws SQLException {
		return dao.RunPayment(vo);
	}
	
	public List<BuyListVO> selectBuyList(String userid) throws SQLException {
		return dao.selectBuyList(userid);
	}
	
	public BuyListVO recentBuy(String userid) throws SQLException {
		return dao.recentBuy(userid);
	}
	
	public int selectByUserid(String userid, int no) throws SQLException {
		return dao.selectByUserid(userid, no);
	}
}
