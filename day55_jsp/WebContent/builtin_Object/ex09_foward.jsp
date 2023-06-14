<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex09_forward.jsp</title>
</head>
<body>
	<form action="../module/SubForwardSample.jsp" method="post">
	<select name="code">
		<option>선택하세요</option>
		<option value="A">Hello World</option>
		<option value="B">Hello World</option>
		<option value="C">Hello World</option>
		
	<!-- 	<option>선택하세요</option>
		<option>Hello World</option>
		<option>Java World</option>
		<option>Jsp World</option> -->
	</select>
	<input type="submit" value="전송">
	</form>
</body>
</html>