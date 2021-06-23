package com.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.ConnectionPoolMgr;

public class MemberDAO {
	private ConnectionPoolMgr pool;
	
	public MemberDAO() {
		pool = new ConnectionPoolMgr();
	}
	
	public int insertMember(MemberVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into member2(userid,pwd,name,address,hp,zipcode,email)"
					+ " values(?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getAddress());
			ps.setString(5, vo.getHp());
			ps.setString(6, vo.getZipcode());
			ps.setString(7, vo.getEmail());
			
			int cnt = ps.executeUpdate();
			System.out.println("회원 가입 cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int checkDuplicate(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="select count(*) from member2 where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			
			int result = 0;
			rs=ps.executeQuery();
			if(rs.next()) {
				int count = rs.getInt(1);
				if(count>0) {  //이미 존재하는 아이디
					result = MemberService.UNUSABLE_ID;
				}else {  //사용가능한 아이디
					result = MemberService.USABLE_ID;
				}
			}
			System.out.println("아이디 중복 확인 결과, result="+result+", 매개변수 userid="+userid);
			
			return result;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public MemberVO selectByUserid(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		MemberVO vo = new MemberVO();
		try {
			conn=pool.getConnection();
			
			String sql="select * from member2 where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setHp(rs.getString("hp"));
				vo.setName(rs.getString("name"));
				vo.setPwd(rs.getString("pwd"));
				vo.setUserid(rs.getString("userid"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setPoint(rs.getInt("point"));
			}
			System.out.println("회원 조회 결과 vo="+vo+", 매개변수 userid="+userid);
			
			return vo;			
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public int loginProc(String userid, String pwd) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="select pwd from member2"
					+ " where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			
			rs=ps.executeQuery();
			
			int result = 0;
			if(rs.next()) {
				String dbPwd = rs.getString(1);
				if(dbPwd.equals(pwd)) {
					result = MemberService.LOGIN_OK;
				}else {
					result = MemberService.PWD_DISAGREE;
				}
			}else {
				result = MemberService.ID_NONE;
			}
			System.out.println("로그인 처리 결과, result="+result
					+", 매개변수 userid="+userid+", pwd="+pwd);
			return result;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public int updateMember(MemberVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=pool.getConnection();
			
			String sql="update member2"
					+ " set email=?, hp=?, address=?, zipcode=?"
					+ " where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getEmail());
			ps.setString(2, vo.getHp());
			ps.setString(3, vo.getAddress());
			ps.setString(4, vo.getZipcode());
			ps.setString(5, vo.getUserid());
			
			int cnt=ps.executeUpdate();
			System.out.println("회원수정 결과, cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int withdrawMember(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=pool.getConnection();
			
			String sql="DELETE FROM member2 "
					+ " WHERE userid=?";
			ps=conn.prepareStatement(sql);			
			ps.setString(1, userid);
			
			int cnt=ps.executeUpdate();
			System.out.println("회원탈퇴 결과, cnt="+cnt+", 매개변수 userid="+userid);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int updatePoint(String userid, int balance) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="update member2 set point=? where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, balance);
			ps.setString(2, userid);
			
			int cnt=ps.executeUpdate();
			System.out.println("포인트 업데이트 결과 cnt="+cnt+", 매개변수 userid="+userid+", balance="+balance);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int updatePoint2(String userid, int balance) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="update member2 set point=point+? where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, balance);
			ps.setString(2, userid);
			
			int cnt=ps.executeUpdate();
			System.out.println("포인트 업데이트 결과 cnt="+cnt+", 매개변수 userid="+userid+", balance="+balance);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public int selectPoint (String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="select point from member2 where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			
			int point=0;
			rs=ps.executeQuery();
			if(rs.next()) {
				point=rs.getInt("point");
			}
			System.out.println("보유 포인트 조회 결과, point="+point+", 매개변수 userid="+userid);
			return point;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
}
