<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex02_response.jsp responser 객체 다루기 </title>
</head>
<body>
<h1> responser 객체 다루기  </h1>
	일반 responser : <%= 100+200+300 %>
	Redirect : <%
		//클라이언트 브라우저에게 ex01_basic.jsp를 재요청 하도록
		out.print("나는 ex02_responser.jsp...");
		response.sendRedirect("../jsp/ex01_basic.jsp");
		
	%>

</body>
</html>