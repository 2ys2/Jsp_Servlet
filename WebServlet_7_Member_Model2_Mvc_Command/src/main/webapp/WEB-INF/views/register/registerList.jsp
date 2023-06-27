<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> registerList.jsp </title>
</head>
<body>
<table>
	<tr>
		<th>ID </th>
		<th>Pwd </th>
		<th>Email </th>
	</tr>
	<c:forEach items="${ list }" var="list">
		<tr>
			<td>${ list.id }</td>
			<td>${ list.pwd }</td>
			<td>${ list.email }</td>
		</tr>
	</c:forEach>
</table><hr>

	<a href="resister.do?cmd=register">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="index.html">MAIN</a>
</body>
</html>