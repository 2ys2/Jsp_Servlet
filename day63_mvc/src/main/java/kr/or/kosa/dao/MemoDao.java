package kr.or.kosa.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import kr.or.kosa.dto.MemoDto;
import kr.or.kosa.util.ConnectionHelper;
import kr.or.kosa.util.ConnectionSingletonHelper;

/*
 싱글톤 방식 연습 (DB 연결)
 Connection conn = null;

 public MemoDao(){
 	conn = ConnectionSingletonHelper.getConnection("oracle"); //singleton
 }
 */

public class MemoDao {
	//POOL
	DataSource ds = null;

	public MemoDao() {
		try {
			//JNDI
			Context ctx = new InitialContext();
			//현재[프로젝트]에서 특정 이름을 가진 객체를 검색 (사용:이름기반 검색)
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MemoDB");
			//lookup된 객체의 타임이 DataSource
			//System.out.println("connection!!!"); //연결 확인
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//삽입
	public int insertMemo(MemoDto dto) {
		System.out.println(dto.toString()); //제대로 넘어오는지 확인
		int resultrow = 0;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO MEMO(ID, EMAIL, CONTENT) VALUES(?, ?, ?)";
		//POOL
		Connection conn = null;

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getContent()); 

			resultrow = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionSingletonHelper.close(pstmt);
				ConnectionSingletonHelper.close(conn);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return resultrow;
	} //insert end

	//전체 조회 
		public List<MemoDto> selectAllMemo() throws SQLException {
			PreparedStatement pstmt = null;
			String sql = "SELECT * FROM MEMO";
			
			/// Pool ///////////////////////////////////
			Connection conn = ConnectionHelper.getConnection("oracle");
			////////////////////////////////////////////
			
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			List<MemoDto> list = new ArrayList<>();  
			
			while( rs.next() ) {
				MemoDto dto = new MemoDto();
				dto.setId(rs.getString("id"));
				dto.setEmail(rs.getString("email"));
				dto.setContent(rs.getString("content"));
				
				list.add(dto);
			}
			
			//Pool 에게 연결 객체 반환//////////////
			conn.close();
			////////////////////////////////////////
			
			return list;
		} // select end

		
		//ID 유무 확인 함수
		public String isCheckById(String id) throws SQLException, IOException {
			
			Connection conn = ConnectionHelper.getConnection("oracle");
			String sql = "SELECT ID FROM MEMO WHERE ID =?";
			String isDbId = null;
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				//같은 ID 존재
				isDbId= "이미 사용 중 입니다. 다른 ID를 선택해주세요.";
				
			} else {
				//사용 가능한 ID
				isDbId="사용할 수 있는 ID입니다.";
			}
			
			rs.close(); pstmt.close(); conn.close();
			
			return isDbId;
		} // idcheck end
		
		public MemoDto searchId(String id) throws SQLException, IOException {
			
			Connection conn = ConnectionHelper.getConnection("oracle");
			String sql = "SELECT * FROM MEMO WHERE ID=? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			MemoDto dto = new MemoDto();
			dto.setId( rs.getString("id"));
			dto.setEmail(rs.getString("email"));
			dto.setContent(rs.getString("content"));
			
			rs.close(); pstmt.close(); conn.close();
			
			return dto;
		}

		public int deleteMemo(String id) throws SQLException, IOException {
			
			Connection conn = ConnectionHelper.getConnection("oracle");
			int deleteresult = 0;
			String sql = "DELETE FROM MEMO WHERE ID=? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteresult = pstmt.executeUpdate();
			
			return deleteresult;
		}

		public int modifyMemo(String id, String email, String content) throws SQLException, IOException {
			
			Connection conn = ConnectionHelper.getConnection("oracle");
			int modifyresult = 0;
			String sql = "UPDATE MEMO SET ID= ? , EMAIL= ? , CONTENT= ? WHERE ID = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			pstmt.setString(3, content);
			pstmt.setString(4, id);
			
			modifyresult = pstmt.executeUpdate();
			
			pstmt.close(); conn.close();
			
			return modifyresult;
		}
		
	}

/*
 * static X -> 생성자 함수 내에 만들어서
 * 객체 생성 되자 마자 호출 되기 때문에...
 * <jsp:useBean id="dao" class="kr.or.kosa.dao.MemoDao" />
 * 사용할 수 있다....
 */
