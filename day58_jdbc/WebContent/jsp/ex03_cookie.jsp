<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex03_cookie.jsp Cookie </title>
</head>
<body>
<%
	Cookie newCookie = new Cookie("newName", "yuna");
	//newCookie.setMaxAge(0); //사용기간을 0으로 만들면 <-- 소멸
	newCookie.setMaxAge(60); //60초
	response.addCookie(newCookie);
%><hr>

<%
	Cookie[] cs = request.getCookies();
		if( cs != null || cs.length > 0 ){
			for(int i = 0; i < cs.length; i++ ){
				if(cs[i].getName().equals("newName")){
					//재설정
					Cookie x = new Cookie("newName", "kingsmile");
					response.addCookie(x);
					x.setMaxAge(60*60);
				}
				out.print(cs[i].getName() + "<br />");
				out.print(cs[i].getValue() + "<br />");
			}
		} else {
			out.print("저장된 쿠키 정보가 없습니다.");
		}
%>

</body>
</html>