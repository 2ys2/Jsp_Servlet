<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<fmt:requestEncoding value="UTF-8" />
<fmt:setLocale value="ko_KR" />

<c:set var="name1" value="한국소프웨어산업협회" />
<c:set var="address1" value="창경궁로 254" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex08_quiz.jsp</title>
</head>
<body>
	<div>
		<h4>1. name=자기이름, address=자기집주소 셋팅하고 출력하기</h4>
		<fmt:bundle basename="bundle.info">
			<fmt:message key="name" /> <br />
			<fmt:message key="address" /> <br />
		</fmt:bundle> 
	</div> <hr>
	<div>
	<h4>1-1. name=자기이름, address=자기집주소 셋팅하고 출력하기</h4>
	<c:out value="${ name1 }" /> <br />
	<c:out value="${ address1 }" />
	</div><hr>
	<div>
		<h4>2. 1~100까지 숫자 중에서 3의 배수의 개수와 합을 출력하는 프로그램 작성</h4>
		<c:set var="sum" value="0" />
		<c:set var="cnt" value="0" />
		<c:forEach var="i" begin="3" end="100" step="3">
			<c:set var="sum"> ${sum+i}</c:set>
			<c:set var="cnt"> ${cnt+1}</c:set>
		</c:forEach>
		<span>1) 개수 : ${cnt} </span> <br />
		<span>2) 합 : ${sum} </span>
		
	</div>
</body>
</html>















