<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<h3 class="mt-3">메뉴2</h3>
<%
	// 세션에 담긴 값 가져오기
	MemberDTO loginDto = (MemberDTO)session.getAttribute("loginDto");

%>
<h3 class="mt-3">Main</h3>
<% if(loginDto != null){ %>
<div>
	<%-- 로그인 한 경우 --%>
	<%=loginDto.getName() %> 님 반갑습니다.
</div>
<% } %>
<%@ include file="footer.jsp"%>