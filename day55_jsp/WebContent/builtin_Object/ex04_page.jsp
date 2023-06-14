<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_page.jsp</title>
</head>
<body>
	<h2>page : import & out object & buffer</h2>
	<%
	boolean flag = true;
	if ( 10 > 5 ) {
%>
	값은 : <font color="blue"><%= flag %></font>
	<% } else {
	//flag = false;
	%>
	값은 : <font color="red"><%= flag %></font>
	<% } %> <hr>
	<h3> BUffer 관련 메소드 (out 객체를 통해서...)</h3>
	버퍼 : <%= out.getBufferSize() %> <br />
	남은 크기 : <%= out.getRemaining() %> <br />
	버퍼 설정 정보: <%= out.isAutoFlush() %> <br />

</body>
</html>