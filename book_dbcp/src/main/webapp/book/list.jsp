<%@page import="dto.BookDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<% List<BookDTO> list = (List<BookDTO>)request.getAttribute("list"); %>
<h3>Book List</h3>
<table class="table">
  <thead>
    <tr>
      <th scope="col">code</th>
      <th scope="col">title</th>
      <th scope="col">writer</th>
      <th scope="col">price</th>
    </tr>
  </thead>
  <tbody>
  <% for(BookDTO dto : list){ %>
    <tr>
      <td><%=dto.getCode()%></td>
      <td><a href="read_pro.jsp?code=<%=dto.getCode()%>" class="text-decoration-none text-reset" ><%=dto.getTitle()%></a></td>
      <td><%=dto.getWriter()%></td>
      <td><%=dto.getPrice()%></td>
    </tr>
    <% } %>
  </tbody>
</table>

<%@ include file="../include/footer.jsp"%>