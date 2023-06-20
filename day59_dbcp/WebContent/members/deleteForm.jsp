<%@page import="edu.kosa.members.MemberVO"%>
<%@page import="edu.kosa.members.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../view/color.jsp" %>
<!DOCTYPE>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴 창</title>

<link href="../view/mystyle.css" rel="stylesheet" type="text/css" >
<script type="text/javascript">
<!--
	function begin(){
		document.myform.passwd.focus();
	}
	
	function checkIt(){
		if(!document.myform.passwd.value){
			alert("비밀번호를 입력하지 않으셨습니다.");
			document.myform.passwd.focus();
			return false;
		}
	}
//-->
</script>
</head>
<%
	//사용자의 id값은 세션속성값으로부터 얻어옴
	String id = (String)session.getAttribute("memID");
	MemberDAO dao = MemberDAO.getInstance();
	MemberVO vo  = dao.getMember(id);
	
	try{
%>
<body>
<form name="myform" action="deletePro.jsp" 
				method="post" onSubmit="return checkIt()">
<table width="350" align="center" border="1" cellpadding="1" cellspacing="1">

<tr height="30">
	<td colspan="2" align="middle" bgcolor="<%=title_c %>">
		<font size="+1"><b>회원 탈퇴</b></font>
	</td>
</tr>


<tr height="30">
	<td width="110" bgcolor="<%= value_c %>" align="center">비밀번호 </td>
	<td width="150" align="center" >
		<input type="password" name="passwd" size="15" maxlength="12">
	</td>
</tr>

<tr height="30">
	<td width="150" align="center" >
		<input type="submit" value="회원탈퇴">
		<input type="button" value="취  소" onclick="javascript:window.location='main.jsp'">
	</td>
</tr>
</table>
</form>
</body>
 <% }catch(Exception e) { e.printStackTrace();  } %>
</html>
