<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<!-- 우리가 만든 페이지 사용을 위한 import -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바스크립트 작성을 위해 -->
<%
request.setCharacterEncoding("UTF-8");
%>
<!-- 건너오는 모든 데이터를 utf-8으로 사용하기 위해 -->
<jsp:useBean id="user" class="user.User" scope="page" />
<!-- scope 현재 페이지 안에서만 사용됨 -->
<jsp:setProperty name="user" property="userID" />
<!-- 로그인페이지에서 넘겨준 userID 를 받아서 한명의 사용자의 userID에 넣어줌 -->
<jsp:setProperty name="user" property="userPassword" />
<!-- *는 모두를 나타냄으로 user클래스에 같은 이름의 멤버변수와 매핑시켜준다. -->
<%-- <jsp:setProperty name="user" property="*"/> --%>
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입구현</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID"); //자신에게 할당된 sessionID 담기
	}
	if (userID != null) { //중복회원가입방지 (이미 로그인 된 사람 회원가입 불가능)
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	
	if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null
			|| user.getUserGender() == null || user.getUserEmail() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if (result == -1) {
			PrintWriter script = response.getWriter();  //하나의 스크립트 문장을 넣을 수 있도록.
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			session.setAttribute("userID", user.getUserID()); //세션관리
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='main.jsp')");
			script.println("</script>");
		} 
	}
	%>

</body>
</html>



<!-- Bean 생성 조건

매매개변수가 없는 public 생성자가 있거나
굳이..? 아예 안만들어도 됨
대신 매개변수 있는 생성자가 있을때 bean 생성이 안됨
getter setter가 꼭 있어야함. -->
