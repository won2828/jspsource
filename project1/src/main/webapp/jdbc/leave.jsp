<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<h3 class="mt-3">회원탈퇴</h3>
<form action="leave_pro.jsp"  method="post">
  <div class="mb-3">
    <label for="userid" class="form-label">아이디</label>
    <input type="text" class="form-control" id="userid" aria-describedby="userid" name="userid" value="<%=loginDto.getUserid()%>">
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">비밀번호</label>
    <input type="password" class="form-control" id="password" name="password" autofocus="autofocus">
  </div> 
  <button type="submit" class="btn btn-primary">회원탈퇴</button>
</form>
<script src="/js/leave.js"></script>
<%@ include file="footer.jsp" %>