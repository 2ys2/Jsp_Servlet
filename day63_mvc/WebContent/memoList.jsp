<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memoList.jsp</title>

<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid #ddd;
	text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #ddd;
}
</style>
</head>
<body>

	<table>
		<tr>
			<th>NickName</th>
			<th>Email</th>
			<th>Content</th>
		</tr>
		<c:forEach var="list" items="${ list }">
			<tr onclick="javascipt:location.href='memoshow?id=${ list.id }'">
				<td>${list.id }<br />
				</td>
				<td>${list.email }<br />
				</td>
				<td>${list.content }<br />
				</td>
			</tr>>
	</c:forEach>
	</table>

<input type="button" value="글쓰기" onclick="javascript:location.href='memo.html'">


</body>
</html>