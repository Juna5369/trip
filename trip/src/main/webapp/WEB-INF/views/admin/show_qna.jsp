<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
								<h1>문의 내역</h1>
								<sub>문의내역을 확인해보세요.</sub>
							</div>
							<table class="tb_mypage">
								<tr style="border-bottom: 2px">
									<th><h3>번호</h3></th>
									<th><h3>상품번호</h3></th>
									<th><h3>아이디</h3></th>
									<th><h3>제목</h3></th>
									<th><h3>문의날짜</h3></th>
								</tr>
								<c:forEach var="qv" items="${list }">
									<tr>
										<td>${qv.qna_no }</td>
										<td>${qv.prod_no }</td>
										<td>${qv.id}</td>
										<td><a href="qna_detail?qna_no=${qv.qna_no }">${qv.qna_title }</a></td>
										<td>${qv.qna_date }</td>
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