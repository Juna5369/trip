<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거긴어때</title>
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
				<%@include file="admin_nav.jsp"%>
                <div class="main_post"> 
					<div class="list_section">
						<div class="qna_section">
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
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../footer.jsp"%>
</body>
</html>