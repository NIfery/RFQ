package com.quiz.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.ConnectionPoolMgr;

public class QuizListDAO {

	private ConnectionPoolMgr pool;

	public QuizListDAO() {
		pool=new ConnectionPoolMgr();
	}
	
	public int insertCount(String num, String corCount) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into quizList(listNo, corCount)"
					+ " values(?, ?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, num);
			ps.setString(2, corCount);
			
			int cnt = ps.executeUpdate();
			System.out.println("result="+cnt+"매개변수="+num);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public QuizListVO countCor(String num) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		QuizListVO vo = new QuizListVO();
		try {
			conn=pool.getConnection();
			
			String sql="select corCount from quizList"
					+ " where listNo=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, num);
			
			rs=ps.executeQuery();
			while(rs.next()) {
				vo.setCorCount(rs.getInt("corCount"));
			}
			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
}
