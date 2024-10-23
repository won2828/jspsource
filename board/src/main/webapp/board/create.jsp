<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<div class="container-fluid">
	<h1 class="h3 mb-4 text-gray-800">Create</h1>
	<%--
	   enctype="application/x-www-form-urlencoded"(기본)
		
	   첨부파일 
	   enctype="multipart/form-data"		
	 --%>
	<form action="/create.do" method="post" enctype="multipart/form-data">		
		<div class="form-group">
			<label for="title">제목</label> 
			<input type="text" class="form-control" id="title" name="title" required="required">			
		</div>
		<div class="form-group">
			<label for="content">내용</label> 
			<textarea rows="10" class="form-control" id="content" name="content" required="required"></textarea>
		</div>		
		<div class="form-group">
			<label for="name">작성자</label> 
			<input type="text" class="form-control" id="name" name="name" required="required">			
		</div>
		<div class="form-group">
			<label for="attach">첨부파일</label> 
			<input type="file" class="form-control" id="attach" name="attach">			
		</div>
		<div class="form-group">
			<label for="password">비밀번호</label> 
			<input type="password" class="form-control" id="password" name="password" required="required">			
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
<%@ include file="../include/footer.jsp"%>