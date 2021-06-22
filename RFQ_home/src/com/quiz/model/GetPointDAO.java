package com.quiz.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.ConnectionPoolMgr;

public class GetPointDAO {
	private ConnectionPoolMgr pool;
	
	public GetPointDAO() {
		pool=new ConnectionPoolMgr();
	}
	public int insertUser(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			
			String sql="insert into getPoint(userid, getPoint) select ?,0"
					+ " from dual"
					+ " where not exists(select * from getPoint where userid=?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, userid);
			
			int cnt=ps.executeUpdate();
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int updatePoint(String userid, int point) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="update getPoint"
					+ " set getPoint=getPoint+?, addList=addList+1"
					+ " where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, point);
			ps.setString(2, userid);
			
			int cnt = ps.executeUpdate();
			System.out.println("포인트 결과="+cnt);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public GetPointVO selectPoint(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		GetPointVO vo = new GetPointVO();
		
		try {
			conn=pool.getConnection();
			
			String sql="select getPoint, addList from getPoint"
					+ " where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setGetPoint(rs.getInt("getPoint"));
				vo.setAddList(rs.getInt("addList"));
			}
			return vo;
		}finally {
			
		}
		
	}
}
