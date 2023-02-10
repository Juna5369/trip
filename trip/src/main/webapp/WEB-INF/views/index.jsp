<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거긴어때</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
<link rel="stylesheet" href="css/main.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section class="main">
		<div class="main_banner">
			<!-- Slider main container -->
			<div class="swiper swiper1">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper">
					<!-- Slides -->
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img2.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img3.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img4.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img5.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img6.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img7.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img8.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#"> <img src="/img/main_img9.jpg">
						</a>
					</div>
				</div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
				<div class="swiper-scrollbar"></div>
			</div>
		</div>
		<div class="box">
			<div class="bottom_side_event">
				<h2 class="bottom_side_event_title">추천상품</h2>
				<h3 class="bottom_side_event_subtitle">거긴어때만의 특별한 추천 상품입니다.</h3>
				<div class="sub_banner">
					<div class="swiper swiper2">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href="#"> <img src="/img/rec_1.jpg">
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#"> <img src="/img/rec_2.jpg">
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#"> <img src="/img/rec_3.jpg">
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#"> <img src="/img/rec_4.jpg">
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#"> <img src="/img/rec_5.jpg">
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#"> <img src="/img/rec_6.jpg">
								</a>
							</div>

						</div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
					</div>
				</div>
			</div>
			<div class="bottom_side_notice">
				<h2 class="bottom_side_notice_title">공지사항</h2>
				<h3 class="bottom_side_notice_subtitle">거긴어때의 새로운 소식을 알려드립니다.</h3>
				<ul class="bottom_side_notice_list">
					<li>공지내용</li>
					<li>공지내용</li>
					<li>공지내용</li>
					<li>공지내용</li>
				</ul>
			</div>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
	<script src="js/main.js"></script>
</body>
</html>