package com.customer.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.db.ConnectionPoolMgr;

public class CustomerDAO {
	private ConnectionPoolMgr pool;
	
	public CustomerDAO() {
		pool = new ConnectionPoolMgr();
	}

	public int insertCustomer(CustomerVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into customer(no,userid,title,content)"
					+ " values(customer_seq.nextval,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getContent());
			
			int cnt = ps.executeUpdate();
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}

	public int deleteCustomer(int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="delete from customer where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);
			
			int cnt = ps.executeUpdate();
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int answerCustomer(String answer, int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="update customer set answer=?,";
					if(answer==null || answer.isEmpty()) {
						sql += " answer_flag='N'";
					}else {
						sql += " answer_flag='Y'";
					}
					sql += " where no=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, answer);
			ps.setInt(2, no);
			
			int cnt = ps.executeUpdate();
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public List<CustomerVO> selectAll(String userid) throws SQLException{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<CustomerVO> list = new ArrayList<CustomerVO>();
		
		try {
			conn=pool.getConnection();
			
			String sql="";
			if(userid.equals("admin")) {
				sql="select * from customer";
				ps=conn.prepareStatement(sql);
			}else {
				sql="select * from customer where userid=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, userid);
			}
			
			rs=ps.executeQuery();
			while(rs.next()) {
				CustomerVO vo = new CustomerVO();
				vo.setNo(rs.getInt("no"));
				vo.setContent(rs.getString("content"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setTitle(rs.getString("title"));
				vo.setUserid(rs.getString("userid"));
				vo.setAnswer(rs.getString("answer"));
				vo.setAnswer_flag(rs.getString("answer_flag"));
				
				list.add(vo);
			}
			
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public CustomerVO selectByNo(int no) throws SQLException{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		CustomerVO vo=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="select * from customer where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				vo = new CustomerVO();
				vo.setNo(rs.getInt("no"));
				vo.setContent(rs.getString("content"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setTitle(rs.getString("title"));
				vo.setUserid(rs.getString("userid"));
				vo.setAnswer(rs.getString("answer"));
				vo.setAnswer_flag(rs.getString("answer_flag"));
			}
			
			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}
