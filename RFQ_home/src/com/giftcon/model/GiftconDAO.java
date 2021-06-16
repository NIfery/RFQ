package com.giftcon.model;

import com.db.ConnectionPoolMgr;

public class GiftconDAO {
	private ConnectionPoolMgr pool;
	
	public GiftconDAO() {
		pool = new ConnectionPoolMgr();
	}
}
