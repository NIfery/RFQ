package com.quiz.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.ConnectionPoolMgr;

public class QuizDAO {
	private ConnectionPoolMgr pool;
	
	public QuizDAO() {
		pool=new ConnectionPoolMgr();
	}
	
	public QuizVO showQuiz(int no) throws SQLException{
		 Connection conn=null;
		 PreparedStatement ps=null;
		 ResultSet rs=null;
		 
		 QuizVO vo=new QuizVO();
		 
		 try {
			 conn=pool.getConnection();
			 
			 String sql="select * from quiz"
			 		+ " where no=?";
			 ps=conn.prepareStatement(sql);
			 ps.setInt(1, no);
			 
			 rs=ps.executeQuery();
			 while(rs.next()) {
				 vo.setContent(rs.getString("content"));
				 vo.setExam1(rs.getString("exam1"));
				 vo.setExam2(rs.getString("exam2"));
				 vo.setExam3(rs.getString("exam3"));
				 vo.setExam4(rs.getString("exam4"));
				 vo.setAnswer(rs.getInt("answer"));
			 }
			 
			 System.out.println("퀴즈 보여주기="+vo+",매개변수="+no);
			 return vo;
		 }finally{
			 pool.dbClose(rs, ps, conn);
		 }
	}
	
	public int insertCount(String num) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into quizList(listNo, corCount)"
					+ " values(?, 1)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, num);
			
			int cnt = ps.executeUpdate();
			System.out.println("result="+cnt+"매개변수="+num);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int countCor(int num) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="select count(*) form quizList";
			ps=conn.prepareStatement(sql);
			
			int cnt=ps.executeUpdate();
			System.out.println("정답개수 결과"+cnt);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	
}
