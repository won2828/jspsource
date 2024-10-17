<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1.
	MemberDTO loginDto = new MemberDTO();
	loginDto.setUserid(request.getParameter("userid"));
	loginDto.setPassword(request.getParameter("password"));
	
	
	// 2.
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = dao.isLogin(loginDto);
	
	// 3. session.setAttribute()
	// 4. ==null : login.jsp
	//    !=null : 도서 목록으로 이동
	if(dto != null){
		session.setAttribute("loginDto", dto);
		response.sendRedirect("/book/list_pro.jsp");
	} else {
		response.sendRedirect("login.jsp");
	}

%>