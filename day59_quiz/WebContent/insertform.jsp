<%@page import="edu.kosa.gift.giftDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상품 등록 </title>
<link href="/view/mystyle.css" rel="stylesheet" type="text/css">

<script>
function openConfirmid(userinput) {
    if (!userinput.gname.value) {  //아이디를 입력했는지 검사
        alert("상품명을 넣으세요");
        return;
    }
    //url과 사용자 입력 id를 조회합니다.
    url = "comfirmname.jsp?gname=" + userinput.gname.value ;
    
    //새로운 윈도우를 연다.
    open(url, "confirm", 
    "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
}
</script>

</head>
<body>

<%
giftDAO dao = giftDAO.getInstance();
dao.getConnection();
out.print("connection success!");
%>

	<form method="post" action="insertPro.jsp" name="giftinput">
  <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr> 
    <td colspan="2" height="39" align="center" >
       <font size="+1" ><b>상품 등록</b></font></td>
    </tr>
    <tr> 
       <td width="200">상품 번호</td>
      <td width="400"> 
        <input type="text" name="gno" size="10" maxlength="15" placeholder="삼품 번호">
      </td>
    </tr>  

    <tr> 
      <td width="200"> 상품명 입력</td>
      <td width="400"> 
        <input type="text" name="gname" size="10" maxlength="15" placeholder="상품명">
        <input type="button" name="comfirm_gname" value="중복확인" OnClick="openConfirmid(this.form)">
      </td>
    </tr>
    <tr> 
      <td width="200">최저가</td>
      <td width="400"> 
        <input type="text" name="g_start" size="15" maxlength="10" placeholder="최저가를 입력하세요">
      </td>
    </tr>
    <tr>
      <td width="200">최고가</td>
      <td width="400"> 
        <input type="text" name="g_end" size="15" maxlength="10" placeholder="최고가를 입력하세요">
      </td>
    </tr>
    <tr> 
      <td colspan="2" align="center"> 
          <input type="submit" name="confirm" value="등 록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
</form>

</body>
</html>

