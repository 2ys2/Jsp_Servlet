<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex06_application.jsp </title>
</head>
<body>
<h2>application 웹 경로</h2>
<!--
	 가상 경로 : (웹 브라우저에서 바라보는 경로
	 http://localhost:8080/day55_jsp/download.memo.text
	 물리적 경로 :
	 "C:\daebo_th2\7_Jsp_Servlet\workspace\day55_jsp\WebContent\download\memo.txt"
	 
	 이클립스 통한 톰켓 구동시 물리적 경로 :
	 "C:\daebo_th2\7_Jsp_Servlet\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\day55_jsp\download\memo.txt"

	 http://localhost:8080/day55_jsp/builtin_Object/ex06_application.jsp
 -->

<%
request.setCharacterEncoding("utf-8");
String resourcePath = "/download/memo.text";
out.print(resourcePath + "<br />");

//가상 경로에서 --> 물리적 경로 얻어내기
out.print(request.getContextPath()+"<br />"); // /day55_jsp

String contextPath = application.getRealPath(request.getContextPath());
String realPath = application.getRealPath(resourcePath);
out.print("contextPath : " + contextPath + "<br />");
out.print("realPath : " + realPath +"<br />");
%>

</body>
</html>