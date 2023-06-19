<%@page import="edu.kosa.gift.giftDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="edu.kosa.gift.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String name = request.getParameter("gname");
out.print(name);
giftDAO dao = giftDAO.getInstance();
int check = dao.confirmName(name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품명 중복 확인</title>


</head>
<body>
<% if(check == 1 ) { %>
<table width="270" border="0" cellpadding="5" cellspacing="0">
	<tr>
	   <td height="39"><%=name %> 존재하는 상품명 입니다.</td>
	</tr>
</table>

<form action="comfirmname.jsp" method="post" name="checkForm">
<table width="270" border="0" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center">
		다른 상품명을 입력하세요<p>
		<input type="text" size="10" maxlength="12" name="gname">
		<input type="submit" value="상품명 중복 확인" >
		</td>
	</tr>
</table>

</form>
<%   }else { %>

<table width="270" border="0" cellspacing="0" cellpadding="5">
 	<tr>
 		<td align="center">
 			<p> 입력하신 <%=name %>는 사용하실 수 있는 상품명 입니다 </p>
 			<input type="button" value="닫기" onclick="setid()">
 		</td>
 	</tr> 	
</table>
<% } %>

</body>
</html>

<!-- /* insertform.giftinput */ -->
<script language="javascript">
	function setid(){
	opener.document.giftinput.gname.value="<%=name%>"; 
	self.close();
	} 
</script>
