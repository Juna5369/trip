<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거긴어때</title>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/mypage.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@include file="../header.jsp"%>
	<%@include file="../nav.jsp"%>

	<div class="list_section">

		<div class="review_section">

			<div class="section_title">

				<h1>여행 후기</h1>

				<sub>여행 후기를 확인해보세요.</sub>

			</div>

			<table class="tb_mypage">

				<tr style="border-bottom: 2px">

					<th>리뷰번호</th>
					<th>상품번호</th>
					<th>회원아이디</th>
					<th>결제번호</th>
					<th>제목</th>
					<th>타입</th>
					<th>상품이미지</th>
					<th>리뷰점수</th>
					<th>리뷰날짜</th>

				</tr>

				<c:forEach var="review" items="${list }">

					<tr>


						<td>${review.rev_no }</td>
						<td>${review.prod_no }</td>
						<td>${review.id }</td>
						<td>${review.pay_no }</td>
						<td>${review.rev_title }</td>
						<td>${review.rev_type }</td>
						<td><img src="../img/${review.rev_img }"></td>
						<td>${review.rev_rating }</td>
						<td>${review.rev_date }</td>

					</tr>

				</c:forEach>

			</table>

		</div>

	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>