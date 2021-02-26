<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザリスト</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<script src="resources/js/jquery-3.3.1.min.js"></script>
</head>

<body>
<h1>[ Happy Blog リスト ]</h1>

<table>
<c:forEach var="member" items="${memberlist}">
<tr>
	<td>
		<img src="resources/image/photo${member.photo}.png">
	</td>
	<td>
		<a href="list?id=${member.id}">
		${member.name} (${member.id})さんのブログを見に行く。
		</a>
	</td>
</tr>
</c:forEach>
</table>

</body>
</html>
