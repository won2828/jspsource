<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	home.jsp 사용자가 입력 => 회원가입 클릭 => 폼 안 내용들이 전송됨(info.jsp)
	
	=> info.jsp 에서는 사용자 입력값 가져오기(request 객체 사용)
	=> DB 연동
 --%>
 <%
 	// 한글 처리
 	request.setCharacterEncoding("utf-8");
 
 	String name = request.getParameter("name");
 	String email = request.getParameter("email");
 	String password = request.getParameter("password");
 	String flag = request.getParameter("flag");
 %>
 <ul>
 <li>name : <%=name %></li>
 <li>email : <%=email %></li>
 <li>password : <%=password %></li>
 <li>flag : <%=flag %></li>
 </ul>
</body>
</html>