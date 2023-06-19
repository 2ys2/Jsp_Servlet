package edu.kosa.members;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dbConn.util.CloseHelper;

public class MemberDAO {  // Controller 

	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private MemberDAO() { }
	
	// 연결 부분
	public Connection getConnection() throws Exception {
		Context  initCtx = new InitialContext();
//		Context envCtx = (Context) initCtx.lookup("java:comp/env");
//		DataSource  ds = (DataSource)envCtx.lookup("jdbc:MemberDB");
		DataSource  ds = (DataSource)initCtx.lookup("java:comp/env/jdbc:MemberDB");
		return ds.getConnection();
	}
	
	// insert 처리 : 회원 가입 처리 메소드 (삽입)
	public void insert(MemberVO vo) throws Exception {
		Connection conn = getConnection();
		PreparedStatement pstmt = null ;
		
		StringBuffer sb = new StringBuffer();
		sb.append("INSERT INTO MEMBERS (ID, PASSWD, NAME, JUMIN1, JUMIN2, ");
		sb.append(" EMAIL, BLOG, REG_DATE)	VALUES( ?, ?, ?, ?, ?, ?, ?, ? )" );
		
		pstmt = conn.prepareStatement(sb.toString());
		
		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getPasswd());
		pstmt.setString(3, vo.getName());
		pstmt.setString(4, vo.getJumin1());
		pstmt.setString(5, vo.getJumin2());
		pstmt.setString(6, vo.getEmail());
		pstmt.setString(7, vo.getBlog());
		pstmt.setTimestamp(8, vo.getReg_date());
		
		int result = pstmt.executeUpdate(); //
		System.out.println("result : " + result);
		
		CloseHelper.close(pstmt);		CloseHelper.close(conn);
	} // insert() end
	
	//userCheck(id, pwd) - 로그인시 사용할 메소드 
	public int userCheck(String id, String pwd) throws Exception {
		String sql = "SELECT passwd FROM MEMBERS WHERE ID = ? ";
		String dbpwd ="";
		int result = -1; 
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery(); // 반환값이 있는 경우
		
		if( rs.next() ) {
			dbpwd = rs.getString("passwd"); // 
			if( dbpwd.equals(pwd) ) result = 1;  // 인증성공
			else result = 0;  // 비번 틀림
		}else {
			result = -1;  //해당 아이디가 없음.
		}
		CloseHelper.close(rs);				CloseHelper.close(pstmt);				CloseHelper.close(conn);
		return result;
	} // userCheck(id, pwd)  end
	
	//confirmID(id) - 회원 가입시 id 중복 체크 할때 사용할 메소드
	public int confirmID(String id) throws Exception {
		String sql = "SELECT ID FROM MEMBERS WHERE ID = ? ";
		int result = -1;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery(); 
		
		if( rs.next() )  result = 1;  // 해당 아이디가 있음
		else result = -1; 
		
		CloseHelper.close(rs);		CloseHelper.close(pstmt);		CloseHelper.close(conn);
		return result;
	} // confirmID(id) end
	
}










