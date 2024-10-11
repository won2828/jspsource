<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 사용자의 입력값 가져오기 : request 객체
	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	
	// name 값을 a 태그로 이동하는 다른 페이지에서 사용 : session 사용
	// setAttribute("key", value) : key - 같은 scope 안에서는 중복 X, value - 객체 저장 가능
	session.setAttribute("name", name);
%>
<h3><%=name %></h3>
<h4><a href="request_scope2.jsp">이동하기</a></h4>