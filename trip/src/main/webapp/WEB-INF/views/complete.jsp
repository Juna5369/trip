<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거긴 어때</title>



<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/complete.css">
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="nav.jsp"%>
	<div class="complete_section" style="text-align: center;">
		<div class="complete_msg">
			<div class="complete_img">
				<img src="img/world.png">
			</div>
			<span>회원가입을 축하드립니다!!!!!</span>
		</div>
		<div class="complete_login">
			<p>
				<span>로그인 페이지로 이동</span>
			</p>
			<img src="img/arrow.png">

		</div>
		<button onclick="location.href='login'">로그인</button>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>