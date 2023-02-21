<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/cuc.css">
</head>
<body>
	<%@ include file="../header.jsp"%>
	<%@ include file="../nav.jsp"%>
	<section class="main">
        <div class="box">
            <div class="cuc_box">
                <div class="lnb">
                    <div class="lnb_title">
                        <a href="cust_center">고객센터</a>
                    </div>
                    <ul>
                        <li><a href="faq">자주찾는 질문</a></li>
                        <li><a href="qna">1:1 문의</a></li>
                        <li><a href="#">1:1 문의내역</a></li>
                        <li><a href="notice">공지사항</a></li>
                    </ul>
                </div>
                <div class="main_faq">
                    <div class="faq_board">
                        <div class="faq_title">자주 찾는 질문
                        </div>
                        <ul class="cuc_list">
                            <li>출국 후 날짜 변경이 필요한 경우에는 어떻게 해야 하나요?</li>
                            <li>항공권 예약 취소 및 환불 등의 문의는 어디서 하나요?</li>
                            <li>항공권 예약 변경은 어디서 하나요?</li>
                            <li>항공권 예약 확인은 어디서 하나요?</li>
                            <li>모바일(온라인) 체크인은 어떻게 하나요?</li>
                            <li>항공권 구매 후 자동 발행 된 호텔 할인쿠폰 확인은 어디서 하나요?</li>
                            <li>여권정보가 확실하지 않습니다.</li>
                            <li>취소수수료와 환불 패널티는 어디서 확인하나요?</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script src="js/cuc.js"></script>
</body>
</html>