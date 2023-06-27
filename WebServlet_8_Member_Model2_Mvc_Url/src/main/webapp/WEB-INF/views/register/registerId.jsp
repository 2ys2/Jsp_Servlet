<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>registerId.jsp</title>
</head>
<body>
<h3> 특정 ID에 해당하는 정보 인출</h3>


	<form action="${pageContext.request.contextPath}/registerId.do?id=1"  method="GET">
		ID:<input type="text"      name="id"    placeholder="id입력(숫자입력)"  ><br><br>
		<input type="submit" value="idOK">	
	</form><p><hr>

<c:set value="${ dto }"  var="dto" />
<table>
	<tr>
		<th>ID </th>
		<th>Pwd </th>
		<th>Email </th>
	</tr>
		<tr>
			<td>${ dto.id }</td>
			<td>${ dto.pwd }</td>
			<td>${ dot.email }</td>
		</tr>
</table><hr>

	<a href="resister.do">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="resisterId.do?id=0">ID 회원</a>&nbsp;&nbsp;&nbsp;
	<a href="index.html">MAIN</a>
	
	
</body>
</html>