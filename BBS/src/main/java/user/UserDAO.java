package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;   // DB에 접근하는 객체
	private PreparedStatement pstmt;
	private ResultSet rs; // DB data를 담을 수 있는 객체

	public UserDAO() { //DB연결
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbID = "user02";
			String dbPassword = "oracle";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			//System.out.println("ORACLE Connection Success !!!");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	//사용자 로그인 인증
	public int login(String userID, String userPassword) { //로그인 기능 구현
		String SQL = "SELECT userPassword FROM USER_LES WHERE userID = ?";
		//System.out.println(userID + ", " +userPassword);
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);  //sqlinjection 방지
			rs = pstmt.executeQuery();
			if (rs.next()) {
				//System.out.println(rs.getString(1));
				if(rs.getString(1).equals(userPassword)) {
					return 1; //로그인 성공
				} else {
					return 0; //비밀번호 불일치
				}
			}
			return -1;// 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터 베이스 오류
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate(); //반드시 0 이상의 값이 반환되기 때문에 0 이하인 -1이 나오면 오류가 나온것!
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
}




/*
 * Class.forName("oracle.jdbc.OracleDriver");
 * conn = DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:orcl",
 * "user01", "oracle");
 * System.out.println("ORACLE Connection Success !!!");
 * 
 * "C:\Users\KOSA\Downloads\WINDOWS.X64_193000_db_home\jdbc\lib\ojdbc8.jar"
 */
