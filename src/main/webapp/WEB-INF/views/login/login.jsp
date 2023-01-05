<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css' rel='stylesheet'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js'></script>
</head>
<body>

<div class="container w-50 mt-5 p-5 shadow">
	 
	<!-- 연속 전송되어 발생하는 submit 현상 방지 - return false -->
	<form id="loginForm" method="post" action="login.do" onSubmit="return false;">

		<h4 class="text-center">로그인</h4>				
		<br>
		<input class="form-control" type="text" id="userId" name="userId" placeholder="아이디" autofocus>		
		<br>
		<input class="form-control" type="password" id="userPw" name="userPw" placeholder="비밀번호">		
		<input type="hidden" name="userEmail" id="userEmail" />
		<input type="hidden" name="userName" id="userName" />
		
		<div class="text-center mt-3">
			<button class="btn btn-primary" id="send">로그인</button>	
		</div>
	</form>
</div>
<script src="${path}/resources/js/login.js"></script>
</body>
</html>