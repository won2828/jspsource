<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 원하는 세션 제거
	// session.removeAttribute("loginDto");

	// 전체 세션 제거
	session.invalidate();
	// 페이지 이동
	response.sendRedirect("main.jsp");
%>