package com.zipcode.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.db.ConnectionPoolMgr;


public class ZipcodeDAO {
	private ConnectionPoolMgr pool;
	
	public ZipcodeDAO() {
		pool = new ConnectionPoolMgr();
	}
	
	public List<ZipcodeVO> selectByDong(String dong) throws SQLException{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<ZipcodeVO> list = new ArrayList<ZipcodeVO>();
		try {
			conn=pool.getConnection();
			
			String sql="select * from zipcode"
					+ " where dong like '%' || ? || '%'"
					+ " order by zipcode";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dong);
			
			rs=ps.executeQuery();
			while(rs.next()) {
				ZipcodeVO vo = new ZipcodeVO();
				vo.setZipcode(rs.getString("zipcode"));
				vo.setSido(rs.getString("sido"));
				vo.setGugun(rs.getString("gugun"));
				vo.setDong(rs.getString("dong"));
				vo.setStartbunji(rs.getString("startbunji"));
				vo.setEndbunji(rs.getString("endbunji"));
				
				list.add(vo);
			}
			System.out.println("주소 조회 결과 : "+list.size());
			
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}
