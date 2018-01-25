<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.yuri.ums.service.UserService" %>
<%@ page import="hwang.yuri.ums.service.UserServiceImpl" %>
<%@ page import="hwang.yuri.ums.dao.UserDao" %>
<%@ page import="hwang.yuri.ums.dao.UserDaoImpl" %>
<%@ page import="hwang.yuri.ums.domain.User" %>
<!DOCTYPE html>
<%
	UserDao userDao=new UserDaoImpl();
	UserService userService=new UserServiceImpl(userDao);
	
	int i=0;
	String[] indexs = request.getParameterValues("index");
	for(String index:indexs){
		i=Integer.parseInt(index);
		userService.secede(i);	
}
%>
<jsp:forward page="01.jsp"/>