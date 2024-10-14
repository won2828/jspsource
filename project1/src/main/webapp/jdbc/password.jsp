<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<h3 class="mt-3">비밀번호 변경</h3>
<form action="password_pro.jsp"  method="post">
  <div class="mb-3">
    <label for="userid" class="form-label">아이디</label>
    <input type="text" class="form-control" id="userid" aria-describedby="userid" name="userid" readonly value="<%=loginDto.getUserid()%>">
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">현재 비밀번호</label>
    <input type="password" class="form-control" id="current_password" name="current_password" autofocus="autofocus">
  </div> 
  <div class="mb-3">
    <label for="password" class="form-label">변경 비밀번호</label>
    <input type="password" class="form-control" id="change_password" name="change_password">
  </div> 
  <button type="submit" class="btn btn-primary">비밀번호 변경</button>
</form>
<%@ include file="footer.jsp" %>