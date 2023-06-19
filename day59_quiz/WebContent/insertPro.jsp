<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.kosa.gift.giftDAO" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="vo" class="edu.kosa.gift.giftVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo" />

<!-- insert 호출 -->
<%
	giftDAO dao = giftDAO.getInstance();
	dao.insert(vo); 
%>


<jsp:getProperty property="gno" name="vo" />번 
<jsp:getProperty property="gname" name="vo" />이 등록되었습니다.
가격은 <jsp:getProperty property="g_start" name="vo" /> ~ 
<jsp:getProperty property="g_end" name="vo" /> 입니다.


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상품 등록 </title>
</head>
<body>
<form action="insertform.jsp">
		<input type="submit" value="상품 등록으로 돌아가기">
	</form>

</body>
</html>