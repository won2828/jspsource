<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그아웃 : 세션 정보 제거
	session.removeAttribute("loginDto");
	
	// 페이지 이동
	response.sendRedirect("/");

%>