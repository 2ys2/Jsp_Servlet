<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex03_loginOK.jsp </title>
</head>
<body>
<%
/*
	1. 한글처리
		1) method = "post"
		request.setCharacterEncoding("UTF-8"); //EUC-KR
		2) method - "get"
		server.xml <- <Connector URIEncoding="UTF-8" ~
*/
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	
	//String[] hobbys = request.getParameterValues("hobby");
	Map map = request.getParameterMap();
	String[] hobbys =(String[])map.get("hobby");
%>
당신의 id : <%= id %> <br />
당신의 password : <%= pw %> <br />
당신의 취미는 :
<%
	if(hobbys != null) {
		for ( int i = 0; i < hobbys.length; i++ ){
%>
	<%= hobbys[i] %> &nbsp;&nbsp;
<%			
		} //for end
	} //if end
%>



</body>
</html>