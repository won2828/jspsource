<%@page import="dao.MemberDAO"%>
<%@page import="dto.ChangeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ChangeDTO changeDto = new ChangeDTO();
	changeDto.setUserid(request.getParameter("userid"));
	changeDto.setCurrentPassword(request.getParameter("current_password"));
	changeDto.setChangePassword(request.getParameter("change_password"));
	
	MemberDAO dao = new MemberDAO();
	int updateRow = dao.update(changeDto);

	if(updateRow == 1){
		session.invalidate(); //or session.removeAttribute("loginDto")
		response.sendRedirect("login.jsp");
	}else{
		response.sendRedirect("info.jsp");
	}

%>