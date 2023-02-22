<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav</title>
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
<script src="js/nav.js"></script>
</head>
<body>
	<nav id="nav"><!-- nav -->
		<div class="box">
			<div class="logo">
				<a href="/"> <img class="logo_img"
					src="/img/geogineoddae_logo.png">
				</a>
			</div>
			<span id="red_line"></span><!--nav line 빨간줄-->
			<div class="right_nav">
				<c:if test="${sessionScope.id != null }">
					<div class="like_icon"><a href="#">찜 목록</a></div>
					<div class="res_icon"><a href="#">예약 내역</a></div>
					<div class="myp_icon"><a href="mypage?id=${sessionScope.id }">내 정보</a></div>
				</c:if>
				<c:if test="${sessionScope.id == null }">
					<div class="like_icon"><a href="login">찜 목록</a></div>
					<div class="res_icon"><a href="login">예약 내역</a></div>
					<div class="myp_icon"><a href="login">내 정보</a></div>
				</c:if>
			</div> 
			<ul class="nav_list">
				<!-- 해외/테마/국내 nav_list  -->
				<li><a href="#">해외</a>
					<div class="dropdown_nav">
						<!-- 해외 part dropdown-->
						<ul class="nav_sub1">
							<li><a href="#">동남아/대만/서남아</a>
								<ul class="nav_sub2 sub1">
									<li><a href="#">태국/라오스</a></li>
									<li><a href="#">캄보디아/베트남</a></li>
									<li><a href="#">말레이시아/싱가포르</a></li>
									<li><a href="#">인도네시아/브루나이</a></li>
									<li><a href="#">대만/필리핀</a></li>
									<li><a href="#">인도/네팔</a></li>
								</ul>
							</li>
							<li><a href="list">일본/몽골/홍콩</a>
								<ul class="nav_sub2 sub2">
									<li><a href="#">도쿄</a></li>
									<li><a href="#">오사카</a></li>
									<li><a href="#">홋카이도</a></li>
									<li><a href="#">오키나와</a></li>
									<li><a href="#">몽골/홍콩</a></li>
								</ul>
							</li>
							<li><a href="#">유럽/아프리카/중동</a>
								<ul class="nav_sub2 sub3">
									<li><a href="#">서유럽</a></li>
									<li><a href="#">동유럽</a></li>
									<li><a href="#">북유럽</a></li>
									<li><a href="#">아프리카</a></li>
									<li><a href="#">중동</a></li>
								</ul>
							</li>
							<li><a href="#">사이판/호주/뉴질랜드</a>
								<ul class="nav_sub2 sub4">
									<li><a href="#">사이판</a></li>
									<li><a href="#">호주</a></li>
									<li><a href="#">뉴질랜드</a></li>
								</ul>
							</li>
							<li><a href="#">하와이/미주/캐나다</a>
								<ul class="nav_sub2 sub5">
									<li><a href="#">하와이</a></li>
									<li><a href="#">미국 서부</a></li>
									<li><a href="#">미국 동부</a></li>
									<li><a href="#">캐나다</a></li>
								</ul>
							</li>
							<li><a href="#">부산/지방출발</a>
								<ul class="nav_sub2 sub6">
									<li><a href="#">부산 출발</a></li>
									<li><a href="#">대구 출발</a></li>
									<li><a href="#">제주 출발</a></li>
									<li><a href="#">청주 출발</a></li>
									<li><a href="#">무안 출발</a></li>
									<li><a href="#">양양 출발</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</li>
				<li><a href="#">테마</a>
					<div class="dropdown_nav">
						<!-- 테마 part dropdown-->
						<ul class="nav_sub1">
							<li><a href="#">허니문</a></li>
							<li><a href="#">골프</a></li>
							<li><a href="#">크루즈</a></li>
						</ul>
					</div>
				</li>
				<li><a href="#">제주/국내</a>
					<div class="dropdown_nav">
						<!-- 제주/국내 part dropdown-->
						<ul class="nav_sub1">
							<li><a href="#">제주</a></li>
							<li><a href="#">울릉도</a></li>
							<li><a href="#">강원</a></li>
							<li><a href="#">경상</a></li>
							<li><a href="#">전라</a></li>
							<li><a href="#">충청</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>