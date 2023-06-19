<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_jdbc.jsp JDBC</title>
</head>
<body>
	<%
	Connection conn = null;
	try {
		//1, 2 드라이버 로드 및 오픈
		Class.forName("oracle.jdbc.OracleDriver");
		out.print("driver load success <br />");

		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl"
				, "user01", "oracle");
		out.print("connection success <br />");
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		//conn.close();
	}
	%>

</body>
</html>