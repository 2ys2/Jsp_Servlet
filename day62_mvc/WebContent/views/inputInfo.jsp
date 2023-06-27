<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> inputInfo.jsp </title>
</head>
<body>

<!-- 경로확인! -->
<form action="../info" method="post">
<input type="text" name="name" placeholder="이름을 입력하세요"> <br />
<input type="text" name="address" placeholder="주소를 입력하세요"> <br />
<input type="text" name="tel" placeholder="연락처를 입력하세요"><br />

<input type="submit" name="Submit" value="제출">

</form>


</body>
</html>