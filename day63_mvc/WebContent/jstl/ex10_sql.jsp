<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex10_sql.jsp SQL태그 예제 - update, param </title>
</head>
<body>
 <h3> SQL태그 예제 - update, param </h3>
 	<sql:update dataSource="jdbc/MemoDB"> 
		UPDATE MEMO SET EMAIL=?, CONTENT=? WHERE ID=?
		<sql:param value="${ 'a@sw.or.kr' }"/>
		<sql:param value="${ 'jstl sql test' }"/>
		<sql:param value="${ 'test' }"/>
	</sql:update> <!-- DB문자열 ''  -->


<!-- context.xml 이름 동일 -->
	<sql:query var="rs" dataSource="jdbc/MemoDB"> 
	SELECT * FROM MEMO
	</sql:query> <!-- select 해온 결과를 rs에 저장한다. -->
	
	<table border="1">
		<tr><!-- 필드명 출력 -->
			<c:forEach var="columnName" items="${ rs.columnNames }">
				<th><c:out value="${ columnName }" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="row" items="${ rs.rowsByIndex }"> <!-- 레코드의 수 만큼 반복 -->
		<tr>
			<c:forEach items="${ row }" var="column" varStatus="i"> <!-- 레코드의 필드 수 만큼 반복 -->
				<td>
					<c:if test="${ column != null }"> <!-- 해당 필드 값이 null이 아니면 -->
						<c:out value="${ column }" />
					</c:if>
					<c:if test="${ column == null }"> <!-- 해당 필드 값이 null이면 -->
						&nbsp;
					</c:if>
				</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
 

</body>
</html>