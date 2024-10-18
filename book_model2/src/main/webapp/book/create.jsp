<%@page import="dto.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<h3>Create</h3>
<form method="post" action="/create.do">
  <div class="row mb-3">
    <label for="code" class="col-sm-2 col-form-label">Code</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="code" name="code" >
    </div>
  </div>
  <div class="row mb-3">
    <label for="title" class="col-sm-2 col-form-label">Title</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="title" name="title" >
    </div>
  </div>  
  <div class="row mb-3">
    <label for="writer" class="col-sm-2 col-form-label">Writer</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="writer" name="writer" >
    </div>
  </div>  
  <div class="row mb-3">
    <label for="price" class="col-sm-2 col-form-label">Price</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="price" name="price" >
    </div>
  </div>  
  <div class="row mb-3">
    <label for="price" class="col-sm-2 col-form-label">Description</label>
    <div class="col-sm-10">
      <textarea name="description" id="description" cols="3" class="form-control"></textarea>
    </div>
  </div>  
  <button type="submit" class="btn btn-secondary">추가</button>
  <a class="btn btn-primary" href="/list.do?keyword=${keyword}">목록</a>  
</form>
<script src="/js/create.js"></script>
<%@ include file="../include/footer.jsp"%>


























