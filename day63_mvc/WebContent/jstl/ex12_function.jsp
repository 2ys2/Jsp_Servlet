<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex12_function.jsp </title>
</head>
<body>
<h3> JSTL function 라이브러리 함수 사용 예제</h3>
<c:set value="String test"  var="str1"/>
<c:set var="str2" value="<aaa>여기</aaa>  test 를 클릭해서 다운로드" />

<p>str1 출력 : ${ str1 }
<p>str2 출력 : ${ fn:escapeXml(str2) } </p>

<c:if test="${ fn:contains(str2, str1) }">  
	<p> test 문자열 포함됨
</c:if>

<c:if test="${ !fn:contains(str2, str1) }">  <!-- not or ! -->
	<p> test 문자열 포함됨
</c:if>
<hr>
<p>indexOf(str1, 'S') : ${ fn:indexOf(str1, 'S') }
<p>length(str2) : ${ fn:length(str2) } 개
<hr>
<c:set value="${ fn:split(str1, ' ') }"  var="spStr"/>
<p>fn:split(str1, ' ') 수행후 첫 원소값 : ${ spStr[1] }
<p>join(str1, '-') " ${ fn:join(spStr, '-') }"
<hr>
<p>replace(str1, 'test', '테스트') : ${ fn:replace(str1, 'test', '테스트') }
<p>startsWith(str1, 'test'): ${ fn:startsWith(str1, 'String') }
<p>startsWith(str1, 'test'): ${ fn:startsWith(str1, 'test') }
<hr>


<p>subString(str1, 0, 3) : ${ fn:replace(str1, 0, 3) }
<p>substringAfter(str1, ' ') : ${ fn:substringAfter(str1, ' ') }
<p>substringBefore(str1, ' ') : ${ fn:substringBefore(str1,' ') }
<hr>
<p>toLowerCase(str1) : ${ fn:toLowerCase(str1) }
<p>toUpperCase(str1) : ${ fn:toLowerCase(str1) }
</body>
</html>









