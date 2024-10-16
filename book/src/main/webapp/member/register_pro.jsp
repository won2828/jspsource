<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	//1
	MemberDTO insertDto = new MemberDTO();
	insertDto.setUserid(request.getParameter("userid"));
	insertDto.setPassword(request.getParameter("password"));
	insertDto.setName(request.getParameter("name"));
	
	//2
	MemberDAO dao = new MemberDAO();
	int insertRow = dao.insert(insertDto);
	
	//4 == 1 (회원가입 성공) login.jsp
	//  == 0 (회원가입 실패) register.jsp
	if(insertRow == 1){
		response.sendRedirect("login.jsp");		
	}else{
		response.sendRedirect("register.jsp");
	}
%>