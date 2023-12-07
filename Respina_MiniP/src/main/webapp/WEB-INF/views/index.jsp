<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/member/memberCheck.js"></script>
<script type="text/javascript" src="resources/js/member/member.js"></script>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/login.css">
</head>
<body class="indexBody">
	<table class="indexTbl" align="center">
		<tr class="tr1">
			<td class="indexTd" colspan="2">Respina's 미니프로젝트
			</td>
			<td class="indexTd" colspan="1">${result}</td>
		</tr>
		<tr class ="tr2">
			<td class="indexTd" colspan="1">
				<img src="resources/img/home2.png"  onclick="javascript:location.href='/springP001/'"
			style="max-height: 50px;max-width: 50px;">&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="resources/img/startup.png"  onclick="javascript:location.href='board.go'"
			style="max-height: 50px;max-width: 50px;">
			
			
			</td>
			<td class="indexTd" colspan="1">뭘 넣을까?</td>
			<td class="indexTd" colspan="1"><jsp:include page="${log}"/></td>
		</tr>
		
		<tr class="contentTr">
			<td colspan="6"><jsp:include page="${content}"/></td>
		</tr>

	</table>

</body>
</html>