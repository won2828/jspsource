<%@page import="dto.BookDTO"%>
<%@page import="dao.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 가져올 값(== 넘어오는 값)이 있는지 확인
	// 시작하는 페이지에서 form 이 존재
	// a 태그 ? 다음에 넘어오는지
			
	int code = Integer.parseInt(request.getParameter("code"));	

	// 2. DB 작업
	BookDAO dao = new BookDAO();
	BookDTO dto = dao.getRow(code);
	
	// 3. 결과값 공유
	request.setAttribute("dto", dto);
	
	// 4. 페이지 이동(client 볼 페이지)
	pageContext.forward("read.jsp");
%>