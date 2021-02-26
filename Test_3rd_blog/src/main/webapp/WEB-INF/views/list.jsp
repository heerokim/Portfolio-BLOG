<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>掲示板</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function() {
	$('#btWrite').on('click', goWriteForm);
});

function goWriteForm() {
	location.href = 'write';
}
</script>
</head>

<body>
<h1>[ ${blogId}さんのブログ。 ]</h1>

<table>
<tr class="title">
	<th>番号</th>
	<th style="width:220px">タイトル</th>
	<th>登録日</th>
</tr>

<!-- 반복 시작 -->
<c:forEach var="board" items="${boardlist}">
<tr>
	<td class="center">${board.boardnum}</td>
	<td>
		<a href="read?boardnum=${board.boardnum}">${board.title}</a>
	</td>
	<td class="center">${board.inputdate}</td>
</tr>
</c:forEach>        
<!-- 반복 끝 -->

<!-- 본인 블로그 일때만 보임 -->
<c:if test="${sessionScope.loginId == blogId}">
<tr>
<th colspan="3" style="height:50px;">
	<input id="btWrite" type="button" value="物書き">
</th>
</tr>
</c:if>

</table>
</body>
</html>
