<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

// 사용자 입력값 가져오기
String name = request.getParameter("name");
String age = request.getParameter("age");

// 사용자 입력값 쿠기 저장
// 쿠키 객체 생성
Cookie cookie1 = new Cookie("name", name);
Cookie cookie2 = new Cookie("age", age);

// 응답 헤더에 추가
response.addCookie(cookie1);
response.addCookie(cookie2);
%>
<h1>쿠키 테스트</h1>
<h3>
	<a href="cookie2.jsp">쿠키 확인</a>
</h3>