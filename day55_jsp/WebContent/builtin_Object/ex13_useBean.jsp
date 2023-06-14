<%@page import="com.kosa.ex04.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- new로 객체 생성했던 것을 tag로 객체 생성하기 위해... 액션태그 - useBean -->
<jsp:useBean id="emp" class="com.kosa.ex04.Emp"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex13_useBean.jsp </title>
</head>
<body>

<%
/* 자바에서 객체 생성 방법 */
Emp e = new Emp();
out.print(e.toString() + "<hr>");
e.setEmpno(1004);
e.setName("이도연");
e.setPay(9000);

out.print(emp.getName());

emp.setName("yuna kim");
%> <hr>
<%= e.toString() %><p>
<h3><%=  e.toString()  %></h3>

</body>
</html>