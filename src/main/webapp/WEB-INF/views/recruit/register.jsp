<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css' rel='stylesheet'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js'></script>
</head>
<body>

<div class="container w-50 mt-5 p-5 shadow">
	<!-- 연속 전송되어 발생하는 submit 현상 방지 - return false -->
	<form id="writeForm" method="post" action="recruitregister.do" onSubmit="return false;">
		<h4 class="text-center">글쓰기</h4>				
			
		<input class="form-control" type="text" id="subject" name="subject" placeholder="글제목을 입력하세요" autofocus>		
		
		<textarea class="form-control mt-2" name="contents" id="contents" placeholder="내용을 입력하세요"></textarea>
		
		<input class="form-control mt-2" type="text" id="writer" name="writer" placeholder="이름을 입력하세요" value="${user.userName}" readonly>
		
		<div class="text-center mt-3">
			<button id="send" class="btn btn-primary">등록</button>	
		</div>
	</form>
</div>
<script src="${path}/resources/js/boardregister.js"></script>
</body>
</html>