<%@page import="dto.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%	BookDTO dto = (BookDTO)request.getAttribute("dto"); %>
<h3>Read</h3>
<form>
  <div class="row mb-3">
    <label for="code" class="col-sm-2 col-form-label">Code</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="code" name="code" value="<%=dto.getCode()%>" readonly>
    </div>
  </div>
  <div class="row mb-3">
    <label for="title" class="col-sm-2 col-form-label">Title</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="title" name="title" value="<%=dto.getTitle()%>" readonly>
    </div>
  </div>
  <div class="row mb-3">
    <label for="writer" class="col-sm-2 col-form-label">Writer</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="writer" name="writer" value="<%=dto.getWriter()%>" readonly>
    </div>
  </div>
  <div class="row mb-3">
    <label for="price" class="col-sm-2 col-form-label">Price</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="price" name="price" value="<%=dto.getPrice()%>" readonly>
    </div>
  </div>
  <div class="row mb-3">
    <label for="description" class="col-sm-2 col-form-label">Description</label>
    <div class="col-sm-10">
     <textarea name="description" id="description" cols="3" class="form-control"><%=dto.getDescription()%></textarea>
    </div>
  </div>
  <button type="button" class="btn btn-primary">목록</button>
  <a class="btn btn-success" href="/modify.do?code=<%=dto.getCode()%>">수정</a>
</form>
<script src="/js/read.js"></script>
<%@ include file="../include/footer.jsp"%>