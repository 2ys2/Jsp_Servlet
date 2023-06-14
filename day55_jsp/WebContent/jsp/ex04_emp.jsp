<%@ page import="com.kosa.ex04.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_emp.jsp </title>
</head>
<body>
<%!
	public String message(){
	return "Daebo th2 화이팅!!!";
}
%>
<%
	Emp e = new Emp(); //객체생성
	out.print(e.toString() + "<p><hr>");
	
	e.setEmpno(7788);
	e.setName("강감찬");
	e.setPay(8000);
	
	out.print(e.getName());
	
	int num = 88;
%>
<%= e.toString() %><hr>

<h3> 외부 package에 있는 클래스 객체 생성</h3>
<%= 1+2+3 %> <br />
<%= num %><br />
<%= message() %>

</body>
</html>