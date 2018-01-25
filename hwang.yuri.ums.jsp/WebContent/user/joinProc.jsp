<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.yuri.ums.service.UserService" %>
<%@ page import="hwang.yuri.ums.service.UserServiceImpl" %>
<%@ page import="hwang.yuri.ums.dao.UserDao" %>
<%@ page import="hwang.yuri.ums.dao.UserDaoImpl" %>
<%@ page import="hwang.yuri.ums.domain.User" %>
<%
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	String userName = request.getParameter("userName");
	userService.join(userName);
%>
<jsp:forward page="01.jsp"/>