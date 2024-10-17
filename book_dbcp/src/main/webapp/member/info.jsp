<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<h3>Info</h3>
  <div class="row mb-3">
    <label for="userid" class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="userid" name="userid" value="<%=loginDto.getUserid()%>"	readonly>
    </div>
  </div>
  <div class="row mb-3">
    <label for="name" class="col-sm-2 col-form-label">이름</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" name="name" value="<%=loginDto.getName()%>"	readonly>
    </div>
  </div>
<form method="post" action="info_pro.jsp">
    <div class="row mb-3">
    <label for="current_password" class="col-sm-2 col-form-label">현재 비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="current_password" name="current_password">
    </div>
  </div>
  <div class="row mb-3">
    <label for="change_password" class="col-sm-2 col-form-label">변경 비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="change_password" name="change_password">
    </div>
  </div>
  <button type="submit" class="btn btn-secondary">비밀번호 변경</button>
  <button type="button" class="btn btn-primary">도서목록</button>
  <input type="hidden" name="userid" value="<%=loginDto.getUserid()%>">
</form>
<script src="/js/register.js"></script>
<%@ include file="../include/footer.jsp"%>


