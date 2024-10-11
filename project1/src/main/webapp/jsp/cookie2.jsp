<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 쿠키 가져오기
Cookie[] cookies = request.getCookies();

for (Cookie c : cookies) {
	out.print("<p>" + c.getName() + " : " + c.getValue() + "</p>");
}
%>