<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link href="/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<div class="container-fluid">
	<h1 class="h3 mb-4 text-gray-800">List</h1>
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<form action="/list.do" id="searchForm">
				<select name="criteria" id="" class="form-select">
					<option value="n"  <c:out value="${searchDTO.criteria == null?'selected':''}" />>-------</option>
					<option value="title" <c:out value="${searchDTO.criteria == 'title'?'selected':''}" />>title</option>
					<option value="content" <c:out value="${searchDTO.criteria == 'content'?'selected':''}" />>content</option>
					<option value="name" <c:out value="${searchDTO.criteria == 'name'?'selected':''}" />>name</option>
				</select>
				<input type="text" name="keyword" id="keyword" value="${searchDTO.keyword}"/>
				<button class="btn btn-warning">검색</button>
			</form>		
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>bno</th>
							<th>title</th>
							<th>regdate</th>
							<th>name</th>
							<th>readcnt</th>							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.bno}</td>
							<td>
								<c:if test="${dto.reLev!=0}">
									<c:forEach begin="0" end="${dto.reLev*1}">
										&nbsp;
									</c:forEach>									
								</c:if>
								<a href="${dto.bno}" class="text-decoration-none text-reset">${dto.title}</a>
							</td>
							<td>${dto.regdate}</td>
							<td>${dto.name}</td>
							<td>${dto.readcnt}</td>							
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="row">			
				<div class="col-sm-12 col-md-12">
					<ul class="pagination justify-content-center">
					
						<c:if test="${pageDTO.prev}">					
							<li class="paginate_button page-item previous">
								<a href="${pageDTO.startPage-1}" class="page-link">previous</a>
							</li>						
						</c:if>
						
						<c:forEach begin="${pageDTO.startPage}" end="${pageDTO.endPage}" var="idx">							
							<li class="paginate_button page-item  <c:out value="${pageDTO.searchDTO.page == idx?'active':'' }"/>">
								<a href="${idx}"  class="page-link">${idx}</a>
							</li>
						</c:forEach>
						
						<c:if test="${pageDTO.next}">
							<li class="paginate_button page-item next">
								<a href="${pageDTO.endPage+1}"	class="page-link">next</a>
							</li>
						</c:if>
					</ul>
				</div>
			</div>
<%-- 페이지 나누기  --%>
<form action="" method="get" id="actionForm">
	<input type="hidden" name="bno" value=""/>
	<input type="hidden" name="page" value="${pageDTO.searchDTO.page}"/>
	<input type="hidden" name="amount" value="${pageDTO.searchDTO.amount}"/>
	<input type="hidden" name="criteria" value="${pageDTO.searchDTO.criteria}"/>
	<input type="hidden" name="keyword" value="${pageDTO.searchDTO.keyword}"/>
</form>
<script src="/js/custom/list.js"></script>
<%@ include file="../include/footer.jsp"%>
			
			
			
			
			
	
	
	
	
	
	
	
	
	
	
			
			
			