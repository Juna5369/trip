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
                            <div class="faq_search">
                                <input type="button" class="faq_search_btn" value="검색">
                                <input type="text" class="faq_search_input" placeholder="검색어를 입력해주세요.">
                                
                            </div>
                        </div>
                        <ul class="cuc_list">
                            <li>1212</li>
                            <li>1212</li>
                            <li>1212</li>
                            <li>1212</li>
                            <li>1212</li>
                            <li>1212</li>
                            <li>1212</li>
                            <li>1212</li>
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