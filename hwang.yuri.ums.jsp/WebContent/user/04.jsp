<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.yuri.ums.service.UserService" %>
<%@ page import="hwang.yuri.ums.service.UserServiceImpl" %>
<%@ page import="hwang.yuri.ums.dao.UserDao" %>
<%@ page import="hwang.yuri.ums.dao.UserDaoImpl" %>
<%@ page import="hwang.yuri.ums.domain.User" %>
<%
	UserDao dao=new UserDaoImpl();
	UserService service=new UserServiceImpl(dao);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>유리 UMS</title>
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
<%	
	if(service.listUsers().size()==0){
		out.print("<h4>등록된 사용자가 없습니다.</h4>");
	}else{
%>		
		<br>
		<p>탈퇴할 회원을 체크하고,삭제버튼을 누르세요!</p>
		<br>
	<form action="delProc.jsp">
	<input class="btn btn-default" type="submit" value="삭제"/>
		<div id="list">
			<br>
			<br>
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
	</form>
<%
	}
%>
</div>
</body>
</html>