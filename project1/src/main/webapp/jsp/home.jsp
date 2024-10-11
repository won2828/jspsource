<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<h4>회원가입</h4>
<form action="info.jsp" method="post">
	<div class="mb-3">
		<label for="name" class="form-label">
			Name</label> <input type="text" class="form-control"
			id="name" aria-describedby="name" name="name">
		<div id="emailHelp" class="form-text">이름을 입력하세요</div>
	</div>
	<div class="mb-3">
		<label for="exampleInputEmail1" class="form-label">Email
			address</label> <input type="email" class="form-control"
			id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
		<div id="emailHelp" class="form-text">We'll never share your
			email with anyone else.</div>
	</div>
	<div class="mb-3">
		<label for="exampleInputPassword1" class="form-label">Password</label>
		<input type="password" class="form-control" id="exampleInputPassword1" name="password">
	</div>
	<div class="mb-3 form-check">
		<input type="checkbox" class="form-check-input" id="exampleCheck1" name="flag" value="apple">
		<label class="form-check-label" for="exampleCheck1">Check me
			out</label>
	</div>
	<button type="submit" class="btn btn-primary">회원가입</button>
</form>
<%@ include file="bottom.jsp"%>