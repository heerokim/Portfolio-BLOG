<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Happy Blog</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<script src="resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>

<h1>[ Happy BLOG ]</h1>
<c:if test="${loginId != null}">
	<h2>
	${sessionScope.loginName}(${sessionScope.loginId})さん、ようこそ !!!<br>
	</h2>
</c:if>

<ul>

<c:if test="${loginId == null}">
	<li><a href="join">会員加入</a>
	<li><a href="login">ログイン</a>
</c:if>
<c:if test="${loginId != null}">
	<li><a href="logout">ログアウト</a>
</c:if>
	<li><a href="listMember">ブログを開設した会員リスト見る</a>
</ul>

</body>
</html>
