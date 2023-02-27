<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/cuc.css">
<link rel="stylesheet" href="/css/mypage.css">
</head>
<body>
	<%@include file="../header.jsp"%>
	<%@include file="../nav.jsp"%>
	<section class="main">
		<div class="box">
			<div class="cuc_box">
				<div class="ggim_section">
					<div class="like_section">
						<div class="section_title">
							<h1>내가 찜한 상품</h1>
							<sub>내가 찜한 상품을 다시 확인해 보세요.</sub>
						</div>
						<div class="like_wrap">
							<c:forEach var="data" items="${plist }" >
								<ul>
									<li>
										<a href="/prod_detail?no=${data.prod_no }"> 
											<img src="../img/${data.prod_img }" id="slide_img"><br> <!-- 게시글 제목1 -->
											<span class="prod_title"> ${data.prod_name }</span> <br> <!-- 게시글 가격1 -->
											<span class="price"> ${data.prod_price_adult } </span> 원
										</a>
									</li>
								</ul>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../footer.jsp"%>
</body>
</html>