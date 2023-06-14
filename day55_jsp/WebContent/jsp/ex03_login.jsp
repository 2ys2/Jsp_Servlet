<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex03_login.jsp </title>
</head>
<body>
	<form action="ex03_loginOK.jsp" method="post">
	ID : <input type ="text" name="userid"><br />
	PWD : <input type ="password" name="pwd"> <br />
	
	Hobby : 
	<input type ="checkbox" name="hobby" value="baseball"> Baseball
	<input type ="checkbox" name="hobby" value="soccer"> Soccer
	<input type ="checkbox" name="hobby" value="basketball"> Basketball <br />

	<input type ="submit" value="로그인">
	</form>


</body>
</html>