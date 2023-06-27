<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>

<c:set  value="${pageContext.request.contextPath}"  var="path" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="${path}/register.do?cmd=registerok"  method="POST">
		ID:<input type="text"      name="id"    placeholder="id입력(숫자로 입력)"    required="required"><br>
		PWD:<input type="password" name="pwd"   placeholder="pwd입력"   required="required"><br>
		EMAIL:<input type="text"   name="email" placeholder="email입력" required="required"><br>
		<input type="submit" value="회원가입">	
	</form>
	
	<hr>
	path 확인 : ${pageContext.request.contextPath} 
</body>
</html>