<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<fmt:requestEncoding value="UTF-8" />

<%
session.setAttribute("message", "DeaBo th2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_el.jsp EL Test</title>
</head>
<body>

	<form action="ex02_result.jsp" method="post">
		<table border="1">
			<tr>
				<td>검색</td>
				<td><input type="search" placeholder="검색어를 쓰세요." name="search"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" placeholder="이름을 쓰세요." name="name"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송"></td>
			</tr>

		</table>

	</form>




	<form action="ex02_el.jsp" method="post">

		<ul>
			<li><label> 이름 </label> <input type="text" id="irum" name="irum"
				value="${ param[ 'name' ]}" placeholder="아무이름이나 입력하세요"></li>
			<p>당신의 이름은 : ${ param.irum } 이시군요</p>
		</ul>

	</form>




</body>
</html>





