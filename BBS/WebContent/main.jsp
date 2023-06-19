<%@ page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID") != null ){
		userID = (String) session.getAttribute("userID");
	}
%>
	
	<nav class="navbar navbar-default">
	<div class="navbar-header"><!-- 홈페이지의 로고 -->
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span><!-- 줄였을때 옆에 짝대기 -->
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li class="active"><a href="main.jsp">메인</a></li>
			<li><a href="bbs.jsp">게시판</a></li>
		</ul>
		<%
		// 접속하기는 로그인이 되어있지 않은 경우만 나오게한다
			if(userID == null) {
		%>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
			<a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role=" button"
				aria-haspopup="true"
				aria-expanded="false"> 접속하기 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul>
			</li>
		</ul>
		<%  // 로그인이 되어있는 사람만 볼수 있는 화면
		} else {
		%>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
			<a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role=" button"
				aria-haspopup="true"
				aria-expanded="false"> 회원관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="logoutAction.jsp">로그아웃</a></li>
				</ul>
			</li>
		</ul>
		<%	
		}
		%>
	</div>
</nav>

<script src="https://code.jquery.com/jquery-3.1.1.min.js">
	</script>
<script src="js/bootstrap.js"></script>
</body>
</html>