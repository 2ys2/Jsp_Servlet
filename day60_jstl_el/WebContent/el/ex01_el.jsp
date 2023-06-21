<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex01_el.jsp EL 연산자 사용 예제 </title>

<style type="text/css">
table, td {
	border: 1px solid;
	width: 700px;
}
</style>

</head>
<body>
<!-- \문자 ==> 해당 문자를 표현. \\ ==> \, \" => " -->
<h3> \${ 5+7 } =${ 5+7 } </h3>
<h3> \${ 5-7 } =${ 5-7 } </h3>
<h3> \${ 5*7 } =${ 5*7 } </h3>
<h3> \${ 5/7 } =${ 5/7 } </h3>
<h3> \${ 5 div 7 } =${ 5 div 7 } </h3>
<h3> \${ 5 % 7 } =${ 5%7 } </h3>
<h3> \${ 5 mod 7 } =${ 5 mod 7 } </h3>
<hr>

<h3> \${ 5 != 7 } =${ 5 != 7 } </h3>
<h3> \${ 5 > 7 } =${ 5 > 7 } </h3>
<h3> \${ 5 >= 7 } =${ 5 >= 7 } </h3>
<h3> \${ 5 <= 7 } =${ 5 <= 7 } </h3>
<hr>

<h3> \${ 5+3 == 8 ? 8 : 10 } =${ 5+3 == 8 ? 8 : 10 } </h3>
<h3> \${ "문자열 출력" } =${ "문자열 출력" } </h3>
<h3> \${ 12.37 } =${ 12.37 } </h3>
<h3> \${ 325 } =${ 325 } </h3>

	<table>
		<tr>
			<td>\${ header['host'] }</td>
			<td>${ header['host'] }</td>
		</tr>
		<tr>
			<td>\${ header['user-agent'] }</td>
			<td>${ header['user-agent'] }</td>
		</tr>
		<tr>
			<td>\${ headerValues }</td>
			<td>${ headerValues }</td>
		</tr>
	</table>



</body>
</html>










