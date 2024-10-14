<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<h3 class="mt-3">회원가입</h3>
<form action="register_pro.jsp" method="post">
  <div class="mb-3">
    <label for="userid" class="form-label">아이디</label>
    <input type="text" class="form-control" id="userid" aria-describedby="userid" name="userid" autofocus="autofocus">
    <div id="userid" class="form-text">아이디를 입력하세요</div>
  </div>
  <div class="mb-3">
    <label for="name" class="form-label">이름</label>
    <input type="text" class="form-control" id="name" aria-describedby="name" name="name">
    <div id="name" class="form-text">이름을 입력하세요</div>
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">비밀번호</label>
    <input type="password" class="form-control" id="password" name="password">
    <div id="password" class="form-text">비밀번호를 입력하세요</div>
  </div>
  <div class="mb-3">
    <label for="age" class="form-label">나이</label>
    <input type="text" class="form-control" id="age" name="age">
    <div id="age" class="form-text">나이를 입력하세요</div>
  </div>
  <div class="mb-3">
    <label for="email" class="form-label">이메일</label>
    <input type="email" class="form-control" id="email" aria-describedby="email" name="email">
    <div id="email" class="form-text">이메일을 입력하세요</div>
  </div> 
  <button type="submit" class="btn btn-primary">회원가입</button>
  <button type="reset" class="btn btn-secondary">재작성</button>
</form>
<%@ include file="footer.jsp" %>