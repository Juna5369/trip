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
	<div class="info">
		<div class="content_section">
			<p class="txt_info">
				<span style="color: green; font-weight: bold;">
					${sessionScope.id }고객님,</span><span>거긴어때를 방문해 주셔서 감사합니다. </span><br>
				<span>고객님의 즐거운 여행을 위해서 항상 최선을 다하겠습니다. </span>
			</p>
			<p class="txt_contact">
				<span>${mv.email }</span> <span>${mv.tel }</span>
			</p>
			<div class="update_section">
				<a href="update?id=${sessionScope.id }">회원정보수정</a>
			</div>
			<div class="deleteMember">
				<a href="deleteMember?id=${sessionScope.id }">회원탈퇴</a>
			</div>
		</div>
	</div>
	<div class="reservation_section">
		<h1 style="font-weight: bold; text-align: center; margin-top: 100px;">예약 목록</h1>
		<table>
			<tr style="border-bottom: 2px">
				<th><h3>예약번호</h3></th>
				<th><h3>상품번호</h3></th>
				<th><h3>예약날짜</h3></th>
				<th><h3>어린이</h3></th>
				<th><h3>성인</h3></th>
				<th><h3>상품가격</h3></th>
			</tr>
			<c:forEach var="rv" items="${list }">
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
	
	
	<%@include file="footer.jsp"%>
</body>
</html>