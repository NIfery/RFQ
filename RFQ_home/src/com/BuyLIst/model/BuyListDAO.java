package com.BuyLIst.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.db.ConnectionPoolMgr;

public class BuyListDAO {
	private ConnectionPoolMgr pool;
	
	public BuyListDAO() {
		pool=new ConnectionPoolMgr();
	}
	
	public int RunPayment(BuyListVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into buylist(no, userid, giftconNo, outPoint)"
					+ " values(buylist_seq.nextval,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setInt(2, vo.getGiftconNo());
			ps.setInt(3, vo.getOutPoint());
			
			int cnt=ps.executeUpdate();
			System.out.println("결제내역 추가 cnt="+cnt+", 매개변수 vo="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
}
