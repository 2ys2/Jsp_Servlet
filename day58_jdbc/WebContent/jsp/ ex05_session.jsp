<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  ex05_session.jsp </title>
</head>
<body>
<%
	String id = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	boolean loginState = false;
	
	// DB 연결 확인
	// id == pwd 같으면 회원이라고 가정하면...
	
	if( id.equals(pwd)) {
		session.setAttribute("uid", id);
		loginState = true;
	}
	
	String userID = (String)session.getAttribute("uid"); //set으로 저장된 정보 가져오기
%>
<h2> <%= userID %></h2>
서버가 부여한 ID : <%= session.getId() %><hr>
<%
	if(loginState == true ){
		out.print(id + "님 로그인 상태");
	}else {
		out.print("로그인 되어 있지 않은 상태. 회원 가입 하세요.");
	}

// session 제거
 session.invalidate();
%>

</body>
</html>