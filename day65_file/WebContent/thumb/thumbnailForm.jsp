<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>thumbnailForm.jsp</title>
</head>
<body>
	<h3>썸네일 이미지 예제</h3>
	<form action="thumbnailPro.jsp" method="post" enctype="multipart/form-data">
		원본 이미지 : 
		<input type="file" name="image"> <br><br>
		<input type="submit" value="섬네일 이미지 만들기"> <br><br>
		
	
	
	</form>

</body>
</html>