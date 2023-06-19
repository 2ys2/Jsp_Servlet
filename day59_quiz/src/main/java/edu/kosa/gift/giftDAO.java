package edu.kosa.gift;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class giftDAO { // Controller
	
	private static giftDAO instance = new giftDAO();
	public static giftDAO getInstance() {
		return instance;
	}
	private giftDAO() {	}
	
	
	//연결
	public Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc:giftDB");
		return ds.getConnection();
	}
	
	//insert : 상품등록
	public void insert(giftVO vo) throws Exception {
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		
		StringBuffer sb = new StringBuffer();
		sb.append("INSERT INTO GIFT (GNO, GNAME, G_START, G_END) ");
		sb.append(" VALUES(?, ?, ?, ? )");
		
		pstmt = conn.prepareStatement(sb.toString());
		pstmt.setString(1, vo.getGno());
		pstmt.setString(2, vo.getGname());
		pstmt.setInt(3, vo.getG_start());
		pstmt.setInt(4, vo.getG_end());
		
		int result = pstmt.executeUpdate();
		System.out.println("result : " + result);
		
		pstmt.close();
		conn.close();
	} //insert() end
	
	public int confirmName(String gname) throws Exception {
		String sql = "SELECT GNAME FROM GIFT WHERE GNAME = ?";
		int result = -1;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, gname);
		ResultSet rs = pstmt.executeQuery();
		
		if ( rs.next() ) result = 1;//해당상품명이있을때
		else result = -1;
		
		pstmt.close();
		rs.close();
		conn.close();
		return result;
	} //confirmeName(name) end

}


















