package com.giftcon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<GiftconVO> selectAll() throws SQLException {
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<GiftconVO> list = new ArrayList<GiftconVO>();
		try {
			conn = pool.getConnection();
			
			String sql ="select * from giftcon";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				int no = rs.getInt("no");
				String seller = rs.getString("seller");
				String category = rs.getString("category");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String detail = rs.getString("detail");
				String image = rs.getString("image");
				Timestamp exdate = rs.getTimestamp("exdate");
				
				GiftconVO vo = new GiftconVO(no, category, name, price, detail, exdate, image, seller);
				
				list.add(vo);
			}
			System.out.println("list.size ="+list.size());
			
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public List<GiftconVO> selectRelationship(String category) throws SQLException {
		Connection conn =null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<GiftconVO> list = new ArrayList<GiftconVO>();
		try {
			conn = pool.getConnection();
			
			String sql = "select * from giftcon "
					+ " where category =?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, category);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				int no = rs.getInt("no");
				String seller = rs.getString("seller");
				String category2 = rs.getString("category");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String detail = rs.getString("detail");
				String image = rs.getString("image");
				Timestamp exdate = rs.getTimestamp("exdate");
				
				GiftconVO vo = new GiftconVO(no, category2, name, price, detail, exdate, image, seller);
				
				list.add(vo);
			}
				System.out.println("category ="+category+", list"+list);
				return list;
			
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public List<GiftconVO> selectRecommend(String recommend) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<GiftconVO> list = new ArrayList<GiftconVO>();
		
		try {
			conn = pool.getConnection();
			
			String sql ="select * from giftcon "
					+ " where category like '%'|| ? ||'%'"
					+ " order by no";
			ps = conn.prepareStatement(sql);
			ps.setString(1, recommend);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int no = rs.getInt("no");
				String seller = rs.getString("seller");
				String category = rs.getString("category");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String detail = rs.getString("detail");
				String image = rs.getString("image");
				Timestamp exdate = rs.getTimestamp("exdate");
				
				GiftconVO vo = new GiftconVO(no, category, name, price, detail, exdate, image, seller);
				list.add(vo);
			}
			System.out.println("list = "+list);
			return list;
			
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	
	public List<GiftconVO> selectName(String name) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<GiftconVO> list = new ArrayList<GiftconVO>();
		
		try {
			conn = pool.getConnection();
			
			String sql ="select * from giftcon "
					+ " where category like '%'|| ? ||'%'"
					+ " order by no";
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int no = rs.getInt("no");
				String seller = rs.getString("seller");
				String category = rs.getString("category");
				String name2 = rs.getString("name");
				int price = rs.getInt("price");
				String detail = rs.getString("detail");
				String image = rs.getString("image");
				Timestamp exdate = rs.getTimestamp("exdate");
				
				GiftconVO vo = new GiftconVO(no, category, name2, price, detail, exdate, image, seller);
				list.add(vo);
			}
			System.out.println("list = "+list);
			return list;
			
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public List<GiftconVO> selectSearch( String category, String keyword) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<GiftconVO> list = new ArrayList<GiftconVO>();
		try {
			conn = pool.getConnection();
			
			String sql = "select * from giftcon";
			if(category !=null && !category.isEmpty()) {
				sql +=  " where category = ?";
					if(keyword !=null && !keyword.isEmpty()) {
						sql += " and name like '%'|| ? ||'%'";
					}
			}
					sql+= " order by no desc";
					
			ps = conn.prepareStatement(sql);
			
			if(category !=null && !category.isEmpty()) {
				ps.setString(1, category);
					if(keyword != null && !keyword.isEmpty()) {
						ps.setString(2, keyword);
					}
			}
			
			rs = ps.executeQuery();
			while(rs.next()) {
				int no = rs.getInt("no");
				String seller = rs.getString("seller");
				String category2 = rs.getString("category");
				String name2 = rs.getString("name");
				int price = rs.getInt("price");
				String detail = rs.getString("detail");
				String image = rs.getString("image");
				Timestamp exdate = rs.getTimestamp("exdate");
				
				GiftconVO vo = new GiftconVO(no, category2, name2, price, detail, exdate, image, seller);
				
				list.add(vo);
			}
			System.out.println("list =" +list);
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}
