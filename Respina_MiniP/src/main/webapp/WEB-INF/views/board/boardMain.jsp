<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="board" items="${boards}">
		<table class="boardContent" align="center">
			<tr>
				<td align="right" class="boardWhen">
				<input name="b_no" value="${board.b_no }" type="hidden"> 
				<fmt:formatDate value="${board.b_when }" type="both" dateStyle="long" timeStyle="short" /></td>
			</tr>
			<tr>
				<td class="boardText"><textarea name="b_text" readonly="readonly">${board.b_text}</textarea></td>
			</tr>
		</table>
	</c:forEach>

</body>
</html>