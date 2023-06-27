<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> memomodify.jsp </title>
</head>
<body>

<form action="./memomodify" method="post">
    <h1 align="center">MODIFY</h1>
    <table border="1" align="center">
        <body>
        <tr>
            <th><label for="id">ID:</label></th>
            <td><input type="text" name="id" id="id"  readonly="readonly" value="${ memo.id }"></td>
        </tr>
        <tr>
            <th><label for="email">EMAIL:</label></th>
            <td><input type="email" name="email" id="email" value="${ memo.email }"></td>
        </tr>
        <tr>
            <th><label for="content">CONTENT:</label></th>
            <td><textarea name="content" id="content" cols="30" rows="10">${ memo.content }</textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="전송">
            </td>
        </tr>
        </body>
    </table>
</form>



</body>
</html>