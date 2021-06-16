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
				 
			 }
			 
			 System.out.println("퀴즈 보여주기="+vo+",매개변수="+no);
			 return vo;
		 }finally{
			 pool.dbClose(rs, ps, conn);
		 }
	}
}
