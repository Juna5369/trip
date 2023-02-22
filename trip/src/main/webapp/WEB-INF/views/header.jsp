<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
	<header> <!-- header -->
		<div class="box">
			<div class="header_menu">
				<c:if test="${sessionScope.id != null }">
					<ul id="top_menu">
						<li><a href="cust_center">고객센터</a></li>
						<li>|</li>
						<li><a href="logout.do">로그아웃</a></li>
						<li>|</li> 
						<li>${sessionScope.id }님환영합니다.</li>
						<li><a href="mypage?id=${sessionScope.id }">마이페이지</a></li>
					</ul>
				</c:if>
				<c:if test="${sessionScope.id == null }">
					<ul id="top_menu">
						<li><a href="cust_center">고객센터</a></li>
						<li>|</li> 
						<li><a href="regMember">회원가입</a></li>
						<li>|</li> 
						<li><a href="login">로그인</a></li>
					</ul>
				</c:if>
			</div>
		</div>
	</header>
</body>
</html>