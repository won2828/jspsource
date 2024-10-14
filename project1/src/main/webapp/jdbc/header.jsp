<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 회원</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<%  
	//세션에 담긴 값 가져오기
	MemberDTO loginDto = (MemberDTO)session.getAttribute("loginDto"); 
%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="main.jsp">JDBC 회원가입</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <% if(loginDto == null){ %>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">        
        <!-- 로그인 정보가 없는 경우 -->
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="login.jsp">로그인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register.jsp">회원가입</a>
        </li>        
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <% }else{ %>
     <!-- 로그인 정보가 있는 경우 -->
      <ul class="navbar-nav mb-2 mb-lg-0 d-flex">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            회원메뉴
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="menu1.jsp">전체회원조회</a></li>
            <li><a class="dropdown-item" href="menu2.jsp">메뉴2</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="menu3.jsp">메뉴3</a></li>
          </ul>
        </li>
      	<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="session_remove.jsp">로그아웃</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="password.jsp">비밀번호 수정</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="leave.jsp">탈퇴</a>
        </li>
      </ul>
      <% } %>
    </div>
  </div>
</nav>
<div class="container">
<!-- content 영역 -->
