<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>掲示板書き込み</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<script src="resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="centerdiv">
<h1>[ Blog 書き込み ]</h1>

<form id="writeform" action="write"  method="post">
	
<table>
<tr>
	<th>タイトル</th>
	<td>
		<input type="text" name="title" id="title" style="width:400px;">
	</td>
</tr>
<tr>
	<th>内容</th> 
	<td>
		<textarea name="content" id="content" style="width:400px;height:200px;resize:none;"></textarea>
	</td>
</tr>
<tr>
	<td colspan="2" class="center">
		<input type="submit" value="セーブ" />
	</td> 
</tr>
</table>
</form>
</div>
</body>
</html>
