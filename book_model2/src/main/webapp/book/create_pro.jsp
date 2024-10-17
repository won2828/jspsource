<%@page import="dao.BookDAO"%>
<%@page import="dto.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	//1. 가져올 값(== 넘어오는 값)이 있는지 확인
	// 시작하는 페이지에서 form 이 존재
	BookDTO insertDto = new BookDTO();
	insertDto.setCode(Integer.parseInt(request.getParameter("code")));
	insertDto.setPrice(Integer.parseInt(request.getParameter("price")));
	insertDto.setTitle(request.getParameter("title"));
	insertDto.setWriter(request.getParameter("writer"));
	insertDto.setDescription(request.getParameter("description"));

	// 2. DB 작업
	BookDAO dao = new BookDAO();
	int insertRow = dao.insert(insertDto);

	// 4. 페이지 이동(client 볼 페이지)
	// 1 => list 보여주기
	// 0 => create.jsp
	if (insertRow == 0) {
		response.sendRedirect("create.jsp");
	} else {
		response.sendRedirect("list_pro.jsp");
	};

%>