<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> logoutAction.jsp </title>
</head>
<body>
<%
	session.invalidate();  /* 이 페이지에 접속하면 session을 빼앗김 */
%>
<script>
	location.href = 'main.jsp';
</script>

</body>
</html>