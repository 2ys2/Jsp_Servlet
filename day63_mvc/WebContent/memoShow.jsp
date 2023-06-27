<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memoShow.jsp</title>

<style>
table {
	border: 1px solid #ddd;
}


</style>
</head>
<body>
<body>
	<table>
		<tr>
			<th><label for="id">ID:</label></th>
			<td>${ memo.id }</td>
		</tr>
		<tr>
			<th><label for="email">EMAIL:</label></th>
			<td>${ memo.email }</td>
		</tr>
		<tr>
			<th><label for="content">CONTENT:</label></th>
			<td>${ memo.content }</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" value="수정" onclick="javascript:location.href='memomodify?id=${memo.id}'"> <!-- get방식 -->
				&nbsp;&nbsp; <input type="button" value="삭제"
				onclick="javascript:location.href='memodelete?id=${memo.id}'"> <!-- <button onclick="javascript:location.href='list'"> 리스트 </button> &nbsp;&nbsp; -->
			</td>
		</tr>
	</table>
</body>



</body>
</html>