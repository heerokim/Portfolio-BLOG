<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
<title>[ ${blogId}さんのブログ。 ]</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function() {
	$('#btLike').on('click', like);
	$('#btDelete').on('click', deleteBoard);
	$('#btUpdate').on('click', updateBoard);
});

//추천하기
function like() {
	$.ajax({
		url: 'like',
		data: {boardnum: ${board.boardnum}},
		dataType: 'text',
		success: function(n) {
			$('#likeDiv').html(n);
		},
		error: function (e) {
			alert("いいね失敗");
		}
	});
}

//삭제하기
function deleteBoard() {
	if (confirm('デリートしますか?')) {
		location.href = 'delete?boardnum=${board.boardnum}';
	}
}
//수정하기
function updateBoard() {
	location.href = 'update?boardnum=${board.boardnum}';
}
</script>
</head>
<body>

<h1>[ ${blogId}さんのブログ。 ]</h1>

<table>

<tr>
<th class="left title">タイトル </th>
<td class="border">${board.title}</td>
</tr>
<tr>
<th class="left title">作成日 </th>
<td class="border">${board.inputdate }</td>
</tr>
<tr>
<th class="left title">内容</th> 
<td class="border"><pre>${board.content}</pre></td>
</tr>
<tr>
<th colspan="2">
	いいね &nbsp;
	<span id="likeDiv" style="font-size: 30px;">${board.likecnt}</span>
	&nbsp;&nbsp;
	<input id="btLike" type="button" value="いいね">
</th>
</tr>

<!-- 본인 블로그 글일때만 보임 -->
<c:if test="${sessionScope.loginId == board.id}">
<tr>
<th colspan="2" style="height:50px;">
	<input id="btUpdate" type="button" value="編集">
	<input id="btDelete" type="button" value="デリート">
</th>
</tr>
</c:if>

</table>

</body>
</html>
