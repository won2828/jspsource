<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html 주석 가능 -->
	<%-- 
	 jsp 주석 : 브라우저 개발자 도구 element 탭에서 보이지 않음

	 jsp(Java Server Page) : HTML + CSS + JAVASCRIPT + JAVA
	 - page 지시어 필요함
--%>
	<%
	// 자바 코드 들어오는 곳
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date date = new Date();
	%>
	<%-- 화면 결과 출력 --%>
	<h3><%=sdf.format(date)%></h3>
</body>
</html>