<%@page import="dto.MemberDTO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//login.jsp 입력 값 가져오기
	MemberDTO dto = new MemberDTO();
	dto.setUserid(request.getParameter("userid"));
	dto.setPassword(request.getParameter("password"));
	
	//dao 메소드 호출
	MemberDAO dao = new MemberDAO();
	MemberDTO loginDto = dao.login(dto);
	
	//결과에 따라 이동
	if(loginDto!=null){
		session.setAttribute("loginDto", loginDto);
		response.sendRedirect("main.jsp");		
	}else{
		response.sendRedirect("login.jsp");
	}

%>









