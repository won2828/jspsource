<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// leave.jsp 사용자 입력값(userid, password) 가져오기
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	// MemberDAO delete 호출
	MemberDAO dao = new MemberDAO();
	int deleteRow = dao.delete(userid, password);
	
	// 결과에 따라 이동
	//  == 1 : session 제거, main.jsp 이동
	//  == 0 : leave.jsp 이동
	if(deleteRow == 1){
		session.invalidate();
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("leave.jsp");
	}
%>