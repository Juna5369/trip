<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/pay.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section class="main">
		<div class="mini_box">
			<h2 class="pay_title">결제완료</h2>
			<div class="pay_cont">
				<h3 class="cont_title">결제상세 내역</h3>
				<div class="cont_inner">
					<!-- value는 서버에서-->
					<input type="text" class="prod_name" value="${prod.prod_name }" >
					<img class="prd_img" alt="prod_img" src="${prod.prod_img }">
					
					<span class="cont_inner_left"> 총 결제 완료 금액 </span>
					<span class="cont_inner_right"><input type="text" id="price" value="${pay.pay_price }" readonly>원</span><br>
				</div>
			</div>
			<br>
			<div class="pay_cont">
				<h3 class="cont_title">결제수단</h3>
				<div class="cont_inner">
					<span class="cont_inner_left"> 카카오페이 </span>
					<img src="img/payment_icon_yellow_small.png" class="kakaopay_img">
				</div>
			</div>
			<button type="button" id="btn-kakao-pay">상품목록으로
			</button>
			
		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>