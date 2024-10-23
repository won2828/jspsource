<%@page import="dto.BoardDTO"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<div class="container-fluid">
	<h1 class="h3 mb-4 text-gray-800">Read</h1>

	<form id="readForm">
		<div class="form-group">
			<label for="bno">글번호</label> 
			<input type="text" class="form-control" id="bno" name="bno" readonly value="${dto.bno}">			
		</div>
		<div class="form-group">
			<label for="title">제목</label> 
			<input type="text" class="form-control" id="title" name="title" readonly value="${dto.title}">			
		</div>
		<div class="form-group">
			<label for="content">내용</label> 
			<textarea rows="15" class="form-control" id="content" name="content" readonly>${dto.content}</textarea>				
		</div>
		<div class="form-group">
			<label for="attach">첨부파일</label>	
			<%
				BoardDTO dto = (BoardDTO)request.getAttribute("dto");
				String encodeFileName = "";
				
				if(dto.getAttach()!= null){
					encodeFileName = URLEncoder.encode(dto.getAttach(), "utf-8");
				}
											
			%>		
			<div><a href="/board/download.jsp?fileName=<%=encodeFileName%>">${dto.attach}</a></div>	
		</div>
		<div class="form-group">
			<label for="name">작성자</label> 
			<input type="text" class="form-control" id="name" name="name" readonly value="${dto.name}">			
		</div>
		<button type="button" class="btn btn-info">수정</button>
		<button type="button" class="btn btn-secondary">답변</button>		
		<button type="button" class="btn btn-success">목록</button>
	</form>
</div>
<%-- 페이지 나누기  --%>
<form action="" method="get" id="actionForm">
	<input type="hidden" name="bno" value="${dto.bno}"/>
</form>
<script src="/js/custom/read.js"></script>
<%@ include file="../include/footer.jsp"%>








