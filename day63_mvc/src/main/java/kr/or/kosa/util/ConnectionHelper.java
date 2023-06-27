package kr.or.kosa.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*
 	ConnectionHelper 클래스의 문제.
 	매번 드라이버 로드,...
 	connection 생성

 	어차피 하나의 프로세스에서 하나만 만들어서 재사용 하면 될텐데....

 	해결 방법은 >> 공유자원( 싱글톤 )
 */

/*
DB 연결 정보 반복적으로 코딩 해결
다른 클래스에서 아래 코드 구현을 하지 않도록 설계

Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","kingsmile", "oracle"); 

이런식으로 사용
ConnectionHelper.getConnection("mysql") or ("oracle"),....
dsn ==> data source name      
 */

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionHelper {
	// 함수(접근자 :  public, static )
	public static Connection getConnection(String dsn) {
		Connection conn = null;
		try {
			if( dsn.toLowerCase().equals("oracle") ) {
				try {
					Context ctx = new InitialContext();
					DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/MemoDB");
					conn = ds.getConnection();

					return conn;
				} catch (Exception e) {
					System.out.println("connection : " + e.getMessage());
					return null;
				}


			} else if( dsn.toLowerCase().equals("mysql") ) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("org.gjt.mm.mysql.Driver","kingsmile", "mysql"); 
					return conn;
				} catch (Exception e) {
					return null;
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return conn;	
		}
	}

	public static Connection getConnection(String dsn, String userid, String pwd) {
		Connection conn = null;
		try {
			if( dsn.equals("mysql") ) {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("org.gjt.mm.mysql.Driver", userid, pwd); 

			} else if( dsn.equals("oracle") ) {
				Class.forName("oracle.jdbc.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.50:1521:orcl",userid, pwd); 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return conn;	
		}
	}
}











