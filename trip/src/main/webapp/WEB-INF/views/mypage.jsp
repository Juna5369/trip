<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/mypage.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="nav.jsp"%>
	<section class="main">
		<div class="info">
			<div class="content_section">
				<div class="section_content">
					<img src="/img/heart.JPG" style="width: 100px; heigth: 100px">
					<p class="txt_info">
						<span style="color: #e82835; font-weight: bold;">
							${sessionScope.id }고객님,</span><span>거긴어때를 방문해 주셔서 감사합니다. </span><br>
						<span>고객님의 즐거운 여행을 위해서 항상 최선을 다하겠습니다.</span>
					</p>
					<p class="txt_contact">
						<span>${mv.email }</span> <span style="margin-left: 40px;">${mv.tel }</span>
					</p>
					<div class="update_section">
						<a href="update?id=${sessionScope.id }">회원정보수정</a>
					</div>
					<div class="deleteMember">
						<a href="deleteMember?id=${sessionScope.id }">회원탈퇴</a>
					</div>
				</div>
			</div>

		</div>

		<div class="list_section">
			<div class="reservation_section">
				<div class="section_title">
					<h1>예약 목록</h1>
					<sub>나의 예약목록을 확인해보세요.</sub>
				</div>
				<table class="tb_mypage">
					<tr style="border-bottom: 2px">
						<th><h3>예약번호</h3></th>
						<th><h3>상품번호</h3></th>
						<th><h3>예약날짜</h3></th>
						<th><h3>어린이</h3></th>
						<th><h3>성인</h3></th>
						<th><h3>상품가격</h3></th>
					</tr>
					<c:forEach var="rv" items="${rlist }">
						<tr>
							<td>${rv.res_no }</td>
							<td>${rv.prod_no }</td>
							<td>${rv.res_date }</td>
							<td>${rv.res_child }</td>
							<td>${rv.res_adult }</td>
							<td>${rv.res_price }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>


		<div class="list_section">
			<div class="qna_section">
				<div class="section_title">
					<h1>문의 내역</h1>
					<sub>나의 문의내역을 확인해보세요.</sub>
				</div>
				<table class="tb_mypage">
					<tr style="border-bottom: 2px">
						<th><h3>번호</h3></th>
						<th><h3>상품번호</h3></th>
						<th><h3>제목</h3></th>
						<th><h3>문의날짜</h3></th>
					</tr>
					<c:forEach var="qv" items="${qlist }">
						<tr>
							<td>${qv.qna_no }</td>
							<td>${qv.prod_no }</td>
							<td><a href="qna_detail?qna_no=${qv.qna_no }">${qv.qna_title }</a></td>
							<td>${qv.qna_date }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="list_section">

			<div class="review_section">

				<div class="section_title">

					<h1>나의 여행 후기</h1>

					<sub>나의 여행 후기를 확인해보세요.</sub>

				</div>

				<table class="tb_mypage">

					<tr style="border-bottom: 2px">

						<th><h3>리뷰번호</h3></th>

						<th><h3>상품번호</h3></th>
						<th><h3>상품사진</h3></th>
						<th><h3>리뷰작성날짜</h3></th>

					</tr>

					<c:forEach var="review" items="${reviewList }">

						<tr>

							<td>${review.rev_no }</td>

							<td>${review.prod_no }</td>
							<td><img src="img/${review.rev_img }"></td>
							<td>${review.rev_date }</td>

						</tr>

					</c:forEach>
					<tr>
						<td colspan="4">
							<button 
								onclick="location.href='reviewBoard?id=${sessionScope.id}'"
								class="review_btn">리뷰 작성하기</button>
						</td>
					</tr>
				</table>

			</div>



		</div>

		<div class="list_section">
			<div class="like_section">
				<div class="section_title">
					<h1>찜한 상품</h1>
					<sub>내가 찜한 상품을 다시 확인해 보세요.</sub>
				</div>
				<div class="like_wrap">
					<c:forEach var="pv" items="${plist }">
						<ul>
							<li
								style="float: left; list-style: none; position: relative; width: 325px;">
								<img src="/img/${pv.prod_img }"> <span><a
									href="prod_detail?prod_no=${pv.prod_no }">${pv.prod_name }</a></span>
								<span>${pv.prod_theme }</span> <span>${pv.prod_price}</span>
							</li>

						</ul>

					</c:forEach>
				</div>
			</div>
		</div>

	</section>
	<%@include file="footer.jsp"%>
</body>
</html>