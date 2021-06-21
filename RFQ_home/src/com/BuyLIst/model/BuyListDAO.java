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
			
			String sql="insert into buylist(no, userid, giftconNo, outPoint, balance)"
					+ " values(buylist_seq.nextval,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setInt(2, vo.getGiftconNo());
			ps.setInt(3, vo.getOutPoint());
			ps.setInt(4, vo.getBalance());
			
			int cnt=ps.executeUpdate();
			System.out.println("결제완료 조회 cnt="+cnt+", 매개변수 vo="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int updateOutPoint(BuyListVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="update buylist set outPoint=? where userid=?, giftconNo=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getOutPoint());
			ps.setString(2, vo.getUserid());
			ps.setInt(3, vo.getGiftconNo());
			
			int cnt=ps.executeUpdate();
			System.out.println("포인트 업데이트 결과 cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
}
