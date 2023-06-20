<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.kosa.members.*" %>
<%@ include file="../view/color.jsp" %>
<jsp:useBean id="vo" class="edu.kosa.members.MemberVO">
	<jsp:setProperty property="*" name="vo" />
</jsp:useBean>

<% request.setCharacterEncoding("utf-8"); %>    

<%
String id = (String) session.getAttribute("memID");
vo.setId(id);
String pwd = request.getParameter("passwd");

MemberDAO dao = MemberDAO.getInstance(); // DB 연결
boolean check = dao.comfirmPwd(id, pwd);
if ( check ) {
	dao.delete(id);
	session.invalidate();
} else {%>
	<script>
		alert("비밀번호가 올바르지 않습니다.");
		history.go(-1);
	</script>
<%}
%>

<link href="../view/mystyle.css" rel="stylesheet" type="text/css">
<table>
	<tr bgcolor="<%=title_c%>">
		<td bgcolor="<%=title_c%>" align="center"><b>탈퇴되었습니다.</b></td>
	</tr>
	<tr >
		<td bgcolor="<%=title_c%>" align="center">
		<form>
				<input type="button" value="메인으로" onclick="window.location='main.jsp'">
		</form> 5초 후에 메인으로 이동합니다...
			<meta http-equiv="Refresh" content="5; url=main.jsp">
		</td>
	</tr>

</table>