package com.giftcon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.ConnectionPoolMgr;

public class GiftconDAO {
	private ConnectionPoolMgr pool;
	
	public GiftconDAO() {
		pool=new ConnectionPoolMgr();
	}
	
	public GiftconVO selectByNo(int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		GiftconVO vo= new GiftconVO();
		try {
			conn=pool.getConnection();
			
			String sql="select * from giftcon where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setNo(rs.getInt(1));
				vo.setCategory(rs.getString("category"));
				vo.setName(rs.getString("name"));
				vo.setPrice(rs.getInt("price"));
				vo.setDetail(rs.getString("detail"));
				vo.setExdate(rs.getTimestamp("exdate"));
				vo.setImage(rs.getString("image"));
				vo.setSeller(rs.getString("seller"));
			}
			System.out.println("기프티콘 번호로 조회 vo="+vo+", 매개변수 no="+no);
			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}
