<%@page import="edu.kosa.members.MemberDAO"%>
<%@page import="edu.kosa.members.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	MemberDAO dao = MemberDAO.getInstance(); // DB 연결
	int check = dao.userCheck(id, pwd);
	
	if( check == 1 ){ //boolean, String, int 모두 가능
		session.setAttribute("memID", id); //session id 저장
		response.sendRedirect("main.jsp"); //정상처리시 main으로
	} else if( check == 0 ) {
%>
<script type="text/javascript">
	<!--
		alert("비밀번호가 틀렸습니다.");
		history.go(-1);
	//-->
</script>
<%} else { %>		
<script type="text/javascript">
	<!--
		alert("아이디가 없습니다.");
		history.go(-1);
	//-->
</script>
<%} // if end %>
   