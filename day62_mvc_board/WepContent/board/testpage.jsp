<%@page import="com.kosa.boardModel.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>



</head>
<body>

<%
BoardDAO dao = BoardDAO.getInstance();
dao.getConnection();
out.print("connection success!");
%>

</body>
</html>