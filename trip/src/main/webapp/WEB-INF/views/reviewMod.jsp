<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거긴어때</title>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/review.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="nav.jsp"%>
	<section class="main">
		<div class="box">
			<div class="review_section">
				<h1>리뷰페이지</h1>
				<form action="reviewBoard" method="post" class="form">
					<input type="hidden" name="id" value="${sessionScope.id }">
					<table border="1">
						<tr>
							<td>제목</td>
							<td><input type="text" name="rev_title" class="title"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><span>${mv.name }</span></td>
						</tr>
						<tr>
							<td>여행타입</td>
							<td>
								<select class="select" name="rev_type">
									<option>홀로여행</option>
									<option>가족여행</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>여행상품선택</td>
							<td>
								<select class="select" name="prod_name">
									<c:forEach var="ov" items="${ovList }">
										<option value="${ov.prod_name }">${ov.prod_name}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="rev_contents" cols="70" rows="10"></textarea></td>
						</tr>
						<tr>
							<td>상품평점</td>
							<td>
								<div id="re_star" class="re_box">
									<div class="re_tag">
										<span>서비스에 대하여 전반적으로 만족하셨나요?</span>
									</div>
									<div class="star_rating">
										<!-- &#9733;  -->
										<input type="radio" name="rev_rating" id="star1" class="stars"
											value="1" onclick="rating_stars(1)"> 
											<label for="star1"></label>
											<input type="radio" name="rev_rating"
											id="star2" class="stars" value="2" onclick="rating_stars(2)">
										<label for="star2"></label> 
										<input type="radio" name="rev_rating" id="star3" class="stars"
										 	value="3" onclick="rating_stars(3)"> 
										<label for="star3"></label>
										<input type="radio" name="rev_rating" id="star4" class="stars"
											value="4" onclick="rating_stars(4)"> 
										<label for="star4"></label>
										<input type="radio" name="rev_rating"
											id="star5" class="stars" value="5" onclick="rating_stars(5)">
										<label for="star5"></label> 
										<input type="hidden" name="star_val" id="star_val" value="">
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="리뷰등록"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</section>
	<%@include file="footer.jsp"%>
<script>
	function rating_stars(n) {
		let star_1 = document.querySelector('label[for="star1"]');
		let star_2 = document.querySelector('label[for="star2"]');
		let star_3 = document.querySelector('label[for="star3"]');
		let star_4 = document.querySelector('label[for="star4"]');
		let star_5 = document.querySelector('label[for="star5"]');

		if (n == "1") {
			//	star_val.value = e.target.value;
			star_val.value = 1;
			star_1.style.backgroundColor = "#e82835";
			star_2.style.backgroundColor = "#f0f0f0";
			star_3.style.backgroundColor = "#f0f0f0";
			star_4.style.backgroundColor = "#f0f0f0";
			star_5.style.backgroundColor = "#f0f0f0";
		} else if (n == "2") {
			//	star_val.value = e.target.value;
			star_val.value = 2;
			star_1.style.backgroundColor = "#e82835";
			star_2.style.backgroundColor = "#e82835";
			star_3.style.backgroundColor = "#f0f0f0";
			star_4.style.backgroundColor = "#f0f0f0";
			star_5.style.backgroundColor = "#f0f0f0";
		} else if (n == "3") {
			//	star_val.value = e.target.value;
			star_val.value = 3;
			star_1.style.backgroundColor = "#e82835";
			star_2.style.backgroundColor = "#e82835";
			star_3.style.backgroundColor = "#e82835";
			star_4.style.backgroundColor = "#f0f0f0";
			star_5.style.backgroundColor = "#f0f0f0";
		} else if (n == "4") {
			//	star_val.value = e.target.value;
			star_val.value = 4;
			star_1.style.backgroundColor = "#e82835";
			star_2.style.backgroundColor = "#e82835";
			star_3.style.backgroundColor = "#e82835";
			star_4.style.backgroundColor = "#e82835";
			star_5.style.backgroundColor = "#f0f0f0";
		} else if (n == "5") {
			//	star_val.value = e.target.value;
			star_val.value = 5;
			star_1.style.backgroundColor = "#e82835";
			star_2.style.backgroundColor = "#e82835";
			star_3.style.backgroundColor = "#e82835";
			star_4.style.backgroundColor = "#e82835";
			star_5.style.backgroundColor = "#e82835";
		}
	}
</script>
</body>
</html>