<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="nav.jsp"%>
	<h1>리뷰페이지</h1>
	<div class="review_section">
		<form action="reviewBoard" method="post">

			<table border="1">
				<input type="hidden"  name="id" value="${sessionScope.id }">
				<tr>
					<td>제목</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><span>${mv.name }</span></td>
				</tr>
				<tr>
					<td>여행상품선택</td>

					<td><select class="select" name="prod_name">
							<c:forEach var="ov" items="${ovList }">
								<option value="${ov.prod_name }">${ov.prod_name}</option>
							</c:forEach>
					</select></td>

				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="rev_contents"></textarea></td>
				</tr>
				<tr>
					<td>상품평점</td>
					<td>
					<img src="/img/fiveStars.JPG">
					<input type="radio" value="5" name="rev_rating">
					
					<img src="/img/fourStars.JPG">
					<input type="radio" value="4" name="rev_rating">
					
					<img src="/img/threeStars.JPG">
					<input type="radio" value="3" name="rev_rating">
					
					<img src="/img/twoStars.JPG">
					<input type="radio" value="2" name="rev_rating">
					
					<img src="/img/oneStar.JPG">
					<input type="radio" value="1" name="rev_rating">
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="리뷰등록"></td>
				</tr>
			</table>


		</form>

	</div>
	<%@include file="footer.jsp"%>
<script>
	
</script>	
</body>

</html>