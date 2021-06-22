package com.BuyLIst.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

	public List<BuyListVO> selectBuyList(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<BuyListVO> list=new ArrayList<BuyListVO>();
		try {
			conn=pool.getConnection();

			String sql="select * from buylist where userid=? order by no desc";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);

			rs=ps.executeQuery();
			while(rs.next()) {
				int no=rs.getInt("no");
				String userid2=rs.getString("userid");
				int giftconNo=rs.getInt("giftconNo");
				int outPoint=rs.getInt("outPoint");
				int balance=rs.getInt("balance");

				BuyListVO vo=new BuyListVO(no, userid2, giftconNo, outPoint, balance);
				list.add(vo);

			}
			System.out.println("주문 내역 조회 list.size()="+list.size()+", 매개변수 userid="+userid);

			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

	public BuyListVO recentBuy(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		BuyListVO vo=new BuyListVO();
		try {
			conn=pool.getConnection();

			String sql="select * from"
					+ " (select * from buylist where userid=? order by no desc)"
					+ " where rownum <= 1";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);

			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setUserid(userid);
				vo.setNo(rs.getInt("no"));
				vo.setGiftconNo(rs.getInt("giftconNo"));
				vo.setOutPoint(rs.getInt("outPoint"));
				vo.setBalance(rs.getInt("balance"));
			}
			System.out.println("최근 내역 조회 vo="+vo+", 매개변수 userid="+userid);
			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}	

	}

}
