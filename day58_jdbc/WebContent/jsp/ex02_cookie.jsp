<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_cookie.jsp Cookie를 이용한 한글처리</title>
</head>
<body>
	<%
	Cookie korCook = new Cookie("koreaName", URLEncoder.encode("강감찬","utf-8"));
	response.addCookie(korCook);
%><hr>
	<h2>한글 쿠키 값 읽기</h2>
	<%
	//client 쿠키 정보 읽어 오기
	Cookie[] cookies = request.getCookies();

	if ( cookies.length > 0 || cookies != null ) {
		for (int i = 0; i < cookies.length; i++ ) {
			out.print(cookies[i].getName() + "<br />");
			out.print(cookies[i].getValue() + "<br />");
			out.print(URLDecoder.decode(cookies[i].getValue()) + "<br />");
			}
	}
%>
</body>
</html>