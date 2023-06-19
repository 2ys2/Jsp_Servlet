<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> dbcpConnection.jsp </title>
</head>
<body>

<%
	try{
		Context initCtx = new InitialContext();		
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc:dbcpTestDB");
		
		Connection conn = ds.getConnection();
		
		out.print("<h1> DBCP Connection success!!...</h1><br /><br />");
	
	
	}catch(Exception e) {
		e.printStackTrace();
	}

%>

</body>
</html>


<!-- // Obtain our environment naming context
Context initCtx = new InitialContext();
Context envCtx = (Context) initCtx.lookup("java:comp/env");

// Look up our data source
DataSource ds = (DataSource)
  envCtx.lookup("jdbc/EmployeeDB");

// Allocate and use a connection from the pool
Connection conn = ds.getConnection();
... use this connection to access the database ...
conn.close(); -->