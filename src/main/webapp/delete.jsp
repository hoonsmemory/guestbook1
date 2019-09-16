<%@page import="java.util.List"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();

	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);

	new GuestbookDao().delete(vo);

	response.sendRedirect(request.getContextPath());
%>
