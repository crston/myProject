<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>EZ 온라인</title>
	<meta name="viewport" content="width=device-width">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/bar.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>                                            
</head>
<body>
	<div id="page" class="site" itemscope itemtype="http://schema.org/LocalBusiness">
		<header class="site-header">
			<div class="top-header">
				<div class="container">
					<div class="top-header-left">
					</div>
					<div class="top-header-right">
						<div class="register-block">
						<c:if test="${user == null && admin == null}">
							<a href="login.do">로그인 /</a>
							<a href="register.do">회원가입</a>
						</c:if>
						<c:if test="${user != null && admin == null}">
							<a href="modify.do">${user.userName}님 안녕하세요! /</a>
							<a href="logout.do">로그아웃</a>
						</c:if>
						<c:if test="${admin != null}">
							<a href="modify.do">관리자님 안녕하세요! /</a>
							<a href="logout.do">로그아웃</a>
						</c:if>
						</div>
					</div>
				</div>
			</div>
			<!-- Top header Close -->
			<div class="main-header">
				<div class="container">
					<div class="logo-wrap" itemprop="logo">
						<img src="${path}/resources/img/EZ.PNG" alt="로고" width="123px">
						<!-- <h1>Education</h1> -->
					</div>
					<div class="nav-wrap">
						<nav class="nav-desktop">
							<ul class="menu-list">
								<li><a href="index.do">메인</a></li>
								<li class="menu-parent"><a href="bdbroadcast.do">소식</a>
									<ul class="sub-menu">
										<li><a href="bdbroadcast.do">공지사항</a></li>
										<li><a href="upupdate.do">업데이트</a></li>
										<li><a href="evevent.do">이벤트</a></li>
									</ul>
								</li>
								<li><a href="guide.do">가이드</a></li>
								<li class="menu-parent"><a href="freefree.do">커뮤니티</a>
									<ul class="sub-menu">
										<li><a href="freefree.do">자유</a></li>
										<li><a href="recruitrecruit.do">모집</a></li>
										<li class="menu-parent"><a href="tippvetippve.do">공략</a>
											<ul class="sub-menu">
												<li><a href="tippvptippvp.do">PVP</a></li>
												<li><a href="tippvetippve.do">PVE</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li><a href="suggsugg.do">건의사항</a></li>
								<li><a href="faq.do">고객센터</a></li>
							</ul>
						</nav>
						<div id="bar">
							<i class="fas fa-bars"></i>
						</div>
						<div id="close">
							<i class="fas fa-times"></i>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
</body>
</html>