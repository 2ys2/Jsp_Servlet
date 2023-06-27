<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> logout.jsp </title>
</head>
<body>
<h3> 로그아웃 되었습니다. </h3>
<%
	session.invalidate();
%>
<input type="button" value="메인" onclick="location.href='index.html'">

</body>
</html>