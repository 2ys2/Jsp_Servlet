<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page buffer="2kb" autoFlush="false" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex12_errorPage.jsp </title>
</head>
<body>
<h2> web.xml 설정 파일을 통해서 에러처리 </h2>

<%-- <!-- 404 error -->
<jsp:forward page="ex1_request.jsp" /> --%>

<!-- 500 error -->
<%
	for(int i = 1; i < 5000; i++ ){
		out.print(i + "<br />");
	}
%>



</body>
</html>