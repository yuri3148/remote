<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="nav.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
@import "./yull/css/01.css"
</style>
<html lang="ko">
<head>
<title>main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<br><br>
<body>
<div class="container">

	<div class="form-group">
		<div>
			<form action="joinProc.jsp">
				<p>등록할 사용자 이름을 입력하세요:</p>
				<input type="text" class="form-control" id="nameForm" name="userName" placeholder="이름을 입력하세요">
				<br>
				<input type="submit" id="add" value="등록"  class="btn btn-default"/>
			</form>
		</div>
	</div>
	
</div>
</body>
</html>