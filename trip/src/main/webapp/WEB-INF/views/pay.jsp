<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/pay.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section class="main">
		<div class="mini_box">
			<h2 class="pay_title">결제하기</h2>
			<div class="pay_cont">
				<h3 class="cont_title">결제상세 내역</h3>
				<div class="cont_inner">
					<input type="hidden" id="pcode" value="">
					<!-- value는 서버에서-->
					<span class="cont_inner_left"> 총 상품 금액 </span> 
					<span class="cont_inner_right"> 1000000원</span><br>
					<br>
					<span class="cont_inner_left"> 총 결제 금액 </span>
					<span class="cont_inner_right"> 1000000원</span><br>
					<br>
					<span class="cont_inner_right"> 유류할증료 & 제세공과금 포함 </span>
				</div>
			</div>
			<br>
			<div class="pay_cont">
				<h3 class="cont_title">결제수단</h3>
				<div class="cont_inner">
					<input type="radio" name="pay_radio" checked> 
					<span class="cont_inner_left"> 카카오페이 </span>
					<img src="img/payment_icon_yellow_small.png" class="kakaopay_img">
				</div>
			</div>
			<button type="button" id="btn-kakao-pay">1000000원 결제하기
			</button>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
	<script>
		$("#btn-kakao-pay").click(function(){
			
		// 필수입력값을 확인.
		var name = "jiwoo";
		var tel = "111-1111-1111";
		var email = "123@gmail.com";
		
		// 결제 정보를 form에 저장한다.
		// let totalPayPrice = parseInt($("#total-pay-price").text().replace(",", ""))
		let totalPayPrice = 1500;
		let totalPrice = 1500;
		
		// 카카오페이 결제전송
		$.ajax({
			type:'get',
			url:'/payment/ready',
			data:{
				total_amount: totalPayPrice,
				payUserName: name,
				sumPrice:totalPrice,
				totalPrice:totalPayPrice,
				tel:tel,
				email:email
			},
			success:function(response){
				location.href = response.next_redirect_pc_url			
			}
		});
	});
	</script>
</body>
</html>