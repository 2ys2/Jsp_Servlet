<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_result.jsp</title>
</head>
<body>

	<%=session.getAttribute("message") %> <p>
	<fmt:requestEncoding value="utf-8"/>
	
	el session <h3>${ sessionScope.message }</h3>
	
	el param <h3>${ param.search }</h3>
	<h3>${ param.name }</h3>
	
	el param <h3>${ param['search'] }</h3>
	<h3>${ param['name'] }</h3>
	
	
	
	<%
		request.setCharacterEncoding("utf-8");
		String search = request.getParameter("search");
		String name = request.getParameter("name");
		
		out.print(search+"<br />");
		out.print(name+"<br />");
	%>
</body>
</html>