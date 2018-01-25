<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.yuri.ums.service.UserService" %>
<%@ page import="hwang.yuri.ums.service.UserServiceImpl" %>
<%@ page import="hwang.yuri.ums.dao.UserDao" %>
<%@ page import="hwang.yuri.ums.dao.UserDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="hwang.yuri.ums.domain.User" %>
<%
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	List<User>users = userService.listUsers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
	<div id="home">
<%
	if(users.size()==0){
		out.print("<h4>등록된 사용자가 없습니다.</h4>");
	}else{
%>	
		<h2>사용자 목록</h2><hr>
			<div id="list">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>회원번호</th>
						<th>이    름</th>
						<th>등 록 일</th>
					</tr>
				</thead>
				<tbody id="userTable">
	<%
		for(User tmp:users){
	%>
			<tr>
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
<%
	}
%>		
	</div>
</div>
</body>
</html>