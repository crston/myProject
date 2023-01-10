<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경 사항 적용</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>                                         
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet'>       
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'></script>         
</head>
<body>
<div class="container d-flex mt-5 justify-content-center">
	<div class="w-75 shadow p-5 rounded border">
	<!-- 연속 전송되어 발생하는 submit 현상 방지 - return false -->
	<form id="modifyForm" method="post" action="tippvemodify.do" onSubmit="return false;">
			<input type="hidden" name="viewPage" value="${pDto.viewPage}"/>
			<input type="hidden" name="searchType" value="${pDto.searchType}"/>
			<input type="hidden" name="keyWord" value="${pDto.keyWord}"/>
		
			<h3>글수정 하기</h3>
			<div class="form-group">
				<label for="subject">번호</label>
				<input type="text" class="form-control" id="bid" 
					name="bid" readonly value="${board.bid}"/>
			</div>
	
			<div class="form-group">
				<label for="subject">제목</label>
				<input type="text" class="form-control" id="subject" 
					name="subject" value="${board.subject}"/>
			</div>
	
			<div class="form-group">
				<label for="contents">내용</label>
				<textarea class="form-control" id="contents" 
					name="contents" rows="4">${board.contents}</textarea>
			</div>
			<div class="form-group">
				<label for="writer">작성자</label>
				<input type="text" class="form-control" id="writer" 
					name="writer" readonly value="${board.writer}"/>
			</div>
			<div class="form-group mt-4">
				<button type="button" id="send" class="btn btn-primary me-2">수정하기</button>
				<button type="button" id="btn-remove" class="btn btn-danger me-2">삭제</button>
				<button type="button" id="btn-list" class="btn btn-secondary">목록으로</button>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-list").click(() => {
			location.href="<c:url value='/tippvetippve.do?viewPage=${pDto.viewPage}&searchType=${pDto.searchType}&keyWord=${pDto.keyWord}'/>";
		})
		
		$("#btn-remove").click(() => {
			location.href="<c:url value='/tippveremove.do?bid=${board.bid}&viewPage=${pDto.viewPage}&searchType=${pDto.searchType}&keyWord=${pDto.keyWord}'/>";
		})
	});
</script>
<script src="${path}/resources/js/boardmodify.js"></script>
</body>
</html>