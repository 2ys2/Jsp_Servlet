<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="gift" class="edu.kosa.quiz.GiftVO"></jsp:useBean>

<jsp:setProperty property="gno" name="gift" value="100" />
<jsp:setProperty property="gname" name="gift" value="비쵸비세트" />
<jsp:setProperty property="g_start" name="gift" value="2000" />
<jsp:setProperty property="g_end" name="gift" value="10000" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Quiz_useBean.jsp </title>
</head>
<body>
<%= gift.toString() %><br /> <hr>
<h1> Quiz_useBean </h1>
<%= gift %> <hr>

gno : <jsp:getProperty property="gno" name="gift" /> <br />
gname : <jsp:getProperty property="gname" name="gift" /> <br />
g_start : <jsp:getProperty property="g_start" name="gift" /> <br />
g_end : <jsp:getProperty property="g_end" name="gift" /> <br />

</body>
</html>