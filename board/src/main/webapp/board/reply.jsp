<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<div class="container-fluid">
	<h1 class="h3 mb-4 text-gray-800">Reply</h1>
	<form action="/reply.do" method="post" id="reply">		
		<div class="form-group">
			<label for="title">제목</label> 
			<input type="text" class="form-control" id="title" name="title" required="required" value="Re : ${dto.title}">			
		</div>
		<div class="form-group">
			<label for="content">내용</label> 
			<textarea rows="10" class="form-control" id="content" name="content" required="required">${dto.content}</textarea>
		</div>		
		<div class="form-group">
			<label for="name">작성자</label> 
			<input type="text" class="form-control" id="name" name="name" required="required">			
		</div>		
		<div class="form-group">
			<label for="password">비밀번호</label> 
			<input type="password" class="form-control" id="password" name="password" required="required">			
		</div>
		<!-- 부모글 정보 -->
		<input type="hidden" name="re_ref" value="${dto.reRef}" />
		<input type="hidden" name="re_lev" value="${dto.reLev}" />
		<input type="hidden" name="re_seq" value="${dto.reSeq}" />
		<input type="hidden" name="bno" value="${dto.bno}" />
		<button type="submit" class="btn btn-primary">작성</button>
		<button type="button" class="btn btn-success">목록</button>
	</form>
</div>
<%-- 페이지 나누기  --%>
<form action="/list.do" method="get" id="actionForm">
	
</form>
<script src="/js/custom/reply.js"></script>
<%@ include file="../include/footer.jsp"%>

















