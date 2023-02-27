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
	<%@include file="../header.jsp"%>
	<%@include file="../nav.jsp"%>
	<div class="list_section">
		<div class="reservation_section">
			<div class="section_title">
				<h1>나의 예약 목록</h1>
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
				<c:forEach var="rv" items="${rlist }" begin="0" end="4">
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
	<%@include file="../footer.jsp"%>
</body>
</html>