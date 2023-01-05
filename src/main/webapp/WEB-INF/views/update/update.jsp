<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>업데이트</title>
<link rel="stylesheet" href="${path}/resources/css/broadcast.css">
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet'>   
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">    
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'></script>     
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>      
<%@ include file="../bar/bar.jsp" %>
<section class="notice">
    <div class="page-title">
          <div class="container">
              <h3>업데이트</h3>
          </div>
      </div>
  
      <!-- board seach area -->
	<form id="searchForm" method="post" action="upupdate.do">
		<div class="board-search d-flex justify-content-center">
			<select class="me-2" style="width:100px" name="searchType">
				<option value="S"
					<c:out value="${pDto.searchType == 'S' ? 'selected':''}"/>>제목</option>
				<option value="C"
					<c:out value="${pDto.searchType == 'C' ? 'selected':''}"/>>내용</option>
				<option value="W"
					<c:out value="${pDto.searchType == 'W' ? 'selected':''}"/>>작성자</option>
				<option value="SC"
					<c:out value="${pDto.searchType == 'SC' ? 'selected':''}"/>>제목+내용</option>
				<option value="SW"
					<c:out value="${pDto.searchType == 'SW' ? 'selected':''}"/>>제목+작성자</option>
				<option value="SWC"
					<c:out value="${pDto.searchType == 'SWC' ? 'selected':''}"/>>제목+내용+작성자</option>
			</select>
			<input class="form-control rounded-0 rounded-start" type="text" id="keyWord" name="keyWord" 
				placeholder="검색어 입력" style="width:300px" value="${pDto.keyWord}"/>
			<button class="btn rounded-0 rounded-end" style="width:40px; background:#138496; color:white"><i class="fa fa-search"></i></button>
		</div>
	</form>
    <!-- board list area -->
      <div id="board-list">
          <div class="container">
              <table class="board-table">
                  <thead>
                  <tr>
                      <th scope="col" class="th-num">번호</th>
                      <th scope="col" class="th-title">제목</th>
                      <th scope="col" class="th-date">조회수</th>
                      <th scope="col" class="th-date">작성자</th>
                      <th scope="col" class="th-date">등록일</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:set var="bno" value="${pDto.startRowNum}" />
                  <c:forEach var="dto" items="${list}">
                  <tr>
                      <td>${bno}</td>
		              <td><a href="<c:url value='/upview.do?bid=${dto.bid}&viewPage=${pDto.viewPage}&searchType=${pDto.searchType}&keyWord=${pDto.keyWord}'/>"/>${dto.subject}</a></td>
			          <td>${dto.hit}</td>
			          <td>${dto.writer}</td>
			          <td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.regDate}"/></td>
		          </tr>
		          <c:set var="bno" value="${bno-1}"/>
		          </c:forEach>
				  </tbody>
              </table>
          </div>
      </div>
      
      <c:if test="${admin != null}">
      <button class="write btn btn-primary" id="btn-write">글쓰기</button>
      </c:if>
      
<ul class="pagination justify-content-center my-5">
  <li class="page-item ${pDto.prevPage <= 0 ? 'disabled' : ''}">
  	<a class="page-link" href="upupdate.do?viewPage=${pDto.prevPage}&cntPerPage=${pDto.cntPerPage}">이전</a>
  </li>
  
  <c:forEach var="i" begin="${pDto.blockStart}" end="${pDto.blockEnd}">
  	<li class="page-item ${pDto.viewPage == i ? 'active' : ''}">
  		<a class="page-link" href="upupdate.do?viewPage=${i}&cntPerPage=${pDto.cntPerPage}&searchType=${pDto.searchType}&keyWord=${pDto.keyWord}">${i}</a>
  	</li>
  </c:forEach>
  <li class="page-item ${pDto.blockEnd >= pDto.totalPage ? 'disabled' : ''}">
  	<a class="page-link" href="upupdate.do?viewPage=${pDto.nextPage}&cntPerPage=${pDto.cntPerPage}">다음</a>
  </li>
</ul>


		
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-write").click(() => {
			location.href="<c:url value='upregister.do'/>";
		})
		
		$("#cntPerPage").change(function(e){
			var cntVal = $("#cntPerPage option:selected").val();
			// alert(cntVal);
/* 			location.href="<c:url value='upupdate.do?viewPage=${pDto.viewPage}&cntPerPage='/>"+cntVal; */	
			location.href="<c:url value='upupdate.do?viewPage=1&cntPerPage='/>"+cntVal;	
		});
		
	});
</script>
  </section>
</html>