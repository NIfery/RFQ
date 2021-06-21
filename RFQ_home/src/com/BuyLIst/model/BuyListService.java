package com.BuyLIst.model;

import java.sql.SQLException;

public class BuyListService {
	private BuyListDAO dao;

	public BuyListService() {
		dao=new BuyListDAO();
	}
	
	public int RunPayment(BuyListVO vo) throws SQLException {
		return dao.RunPayment(vo);
	}

}
