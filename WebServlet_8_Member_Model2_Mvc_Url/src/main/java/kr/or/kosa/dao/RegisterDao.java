package kr.or.kosa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import kr.or.kosa.dto.RegisterDto;
import kr.or.kosa.utils.ConnectionHelper;

/*
1. DB연결 POOL
2. insert 작업 
insert into mvcregister(id,pwd,email) values(?,?,?)

*/
public class RegisterDao {
  
	//writeOk ...
	//insert into mvcregister(id,pwd,email) values(?,?,?)
	public int writeOk(RegisterDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int resultrow=0;
		try {
				conn = ConnectionHelper.getConnection("oracle");
				String sql="insert into mvcregister(id,pwd,email) values(?,?,?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1,dto.getId());
				pstmt.setString(2,dto.getPwd());
				pstmt.setString(3,dto.getEmail());
				
				resultrow = pstmt.executeUpdate(); //
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			ConnectionHelper.close(pstmt);
			ConnectionHelper.close(conn);
		}
		return resultrow;
	} // end insert
	
	// select * from mvcregister
	public List<RegisterDto>  selectAll() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int resultrow=0;
		List list = null;
		try {
				conn = ConnectionHelper.getConnection("oracle");
				String sql="select * from mvcregister";
				pstmt = conn.prepareStatement(sql);
				 rs = pstmt.executeQuery();
				
				if( rs.next() ) {
					list = new ArrayList();
					
					do {
						RegisterDto dto = new RegisterDto();
						dto.setEmail(rs.getString("email"));
						dto.setPwd(rs.getString("pwd"));
						dto.setId(rs.getInt("id"));
						
						list.add(dto);
						
					}while( rs.next() );
					
				}// if end
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			ConnectionHelper.close(pstmt);
			ConnectionHelper.close(conn);
		}
		return list;
	} // end selectAll() 
		
	// selectById(int id) : select * from mvcregister where id = ?
	public RegisterDto selectById(int id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int resultrow=0;
		RegisterDto dto = null;
		
		try {
				conn = ConnectionHelper.getConnection("oracle");
				String sql="select * from mvcregister where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				
				System.out.println(sql + ", " +rs);
								
				if( rs.next() ) {
					dto = new RegisterDto();
					dto.setEmail(rs.getString("email"));
					dto.setId(rs.getInt("id"));
					dto.setPwd(rs.getString("pwd"));
				}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			ConnectionHelper.close(pstmt);		ConnectionHelper.close(conn);
		}
		
		return dto;
		
	} // end selectById
	
}









