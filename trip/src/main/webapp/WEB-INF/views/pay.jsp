<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<h2 class="pay_title">결제하기</h2>
			<div class="pay_cont">
				<h3 class="cont_title">결제상세 내역</h3>
				<div class="cont_inner">
					<input type="hidden" id="pcode" value="">
					<!-- value는 서버에서-->
					<span class="cont_inner_left"> 총 결제 금액 </span>
					<span class="cont_inner_right"><input type="text" id="price" value="${reser.res_price }" readonly>원</span><br>
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
			<button type="button" id="btn-kakao-pay"><span>${reser.res_price }</span>원 결제하기
			</button>
			<input type="hidden" id="prod_no" value="${reser.prod_no }">
		</div>
	</section>
	<%@ include file="footer.jsp"%>
	<script>
		
/*	
	$(document).ready(function(){
		$.ajax({
			type: 'get',
			url: '/getInfo',
			dataType: "text",
			success: function(data){
				let obj = JSON.parse(data);
				
				$("#name").val(obj.name);
				$("#tel").val(obj.tel);
				$("#email").val(obj.email);
			}
		});
	});
*/
	$("#btn-kakao-pay").click(function(){

		// 필수입력값을 확인.
		// 결제 정보를 form에 저장한다.
		// let totalPayPrice = parseInt($("#total-pay-price").text().replace(",", ""))
		let prod_no = $("#prod_no").val();
		let totalPrice = $("#price").val();
		// 카카오페이 결제전송
		$.ajax({
			type:'get',
			url:'/payment/ready',
			data:{
				prod_no: prod_no,
				res_price: totalPrice
			},
			success:function(response){
				location.href = response.next_redirect_pc_url
			}
		});
	});
	</script>
</body>
</html>