<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info.jsp</title>
</head>
<body>

<table>
		<form action="../info" method="post">
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" placeholder="name input"></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="phone"
					placeholder="cell-phone number input"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address"
					placeholder="address input"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</form>
	</table>

</body>
</html>