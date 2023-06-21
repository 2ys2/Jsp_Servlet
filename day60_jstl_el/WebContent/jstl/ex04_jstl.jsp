<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_jstl.jsp JSTL core - set, out, remove </title>
</head>
<body>
<img alt="test" src="../images/mac.gif">
<h3> JSTL core - set, out, remove </h3>
<p> Browser 변수 값 설정
<c:set var="browser" value="${ header['user-agent'] }" /><br />
<c:set var="browser2" value="${ header['Cookie'] }" /><br />
<c:set var="browser3" value="${ header['Host'] }" /><br />
<c:out value="${ browser }"></c:out> <p>
<h2> 그냥 EL : ${browser}</h2><hr>
<h2> ${browser2}</h2><hr>
<h2> ${browser3}</h2><hr>

<p> browser 변수 값 제거 후
<c:remove var="browser"/><p>
<c:out value="${ browser }"></c:out> <p>











</body>
</html>