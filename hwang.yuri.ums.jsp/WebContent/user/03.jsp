<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.yuri.ums.service.UserService" %>
<%@ page import="hwang.yuri.ums.service.UserServiceImpl" %>
<%@ page import="hwang.yuri.ums.dao.UserDao" %>
<%@ page import="hwang.yuri.ums.dao.UserDaoImpl" %>
<%@ page import="hwang.yuri.ums.domain.User" %>
<%
	UserDao dao = new UserDaoImpl();
	UserService service=new UserServiceImpl(dao); 
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<style>
@import "../yull/css/01.css"
</style>
	<div class="form-group">
		<br>
		<br>
		<h2 align="center">UMS</h2>
		<br>
		<br>
		<div id="menuBtn" class="btn-group btn-group-justified">
		<a href="./01.jsp" class="btn btn-default">목록</a>
		<a href="./02.jsp"  class="btn btn-default">등록</a>
		<a href="./03.jsp" class="btn btn-default">수정</a>
		<a href="./04.jsp"  class="btn btn-default">탈퇴</a>
	</div>
	</div>
</head>
<body>
<div class="container">
<input id="numFrom" type="text" name="editNum" style="display:none" value="">
	<div class="form-group">
		<form action="updateProc.jsp">
			<p>수정할 사용자를 체크 후,이름을 입력하고 수정버튼을 누르세요!</p>
			<input name="updateName" class="form-control"type="text" placeholder="입력하세요">
			<br>
			<input type="submit" value="수정" class="btn btn-default"/>
			<div id="home">
			<h2>사용자 목록</h2><hr>
				<div id="list">
				<table class="table table-hover">
					<thead>
						<tr>
							<th></th>
							<th>회원번호</th>
							<th>이    름</th>
							<th>등 록 일</th>
						</tr>
					</thead>
					<tbody id="userTable">
				<%
					for(User tmp:service.listUsers()){
				%>
					<tr>
						<td><input type="checkbox" name="index" value="<%=tmp.getUserNo()%>"></td>
						<td><%=tmp.getUserNo() %></td>
						<td><%=tmp.getUserName() %></td>
						<td><%=tmp.getRegDate() %></td>
					</tr>
				<%
					}
				%>
					</tbody>
				</table>
				</div>
			</div>
		</form>		
	</div>
</div>
</body>
</html>