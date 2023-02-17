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
	            <div class="middle_title"><em>거긴어때 고객센터</em>입니다. 무엇을 도와드릴까요?</div>
	            <div class="middle_content">
	                <div class="search_box">
	                    <input type="text" class="search_input" placeholder="검색어를 입력해 주세요">
	                    <input type="submit" class="search_button" value="검색">
	                </div>
	                <div class="guidance">
	                    <div class="guide_title">자주 찾는 질문
	                    	<span><a href="faq">더보기></a></span>
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
	            <div class="right_content">
	                <div class="right_box">
	                    <div class="txt_box">
	                        <p>1:1게시판 문의</p>
	                        <p>궁금하신 사항을 남겨주세요</p>
	                    </div>
	                    <div class="btn_box">
	                        <input type="button" class="q_btn" value="문의내역 확인">
	                        <input type="button" class="q_btn" value="문의하기">
	                    </div>
	                </div>
	                <div class="right_bottom_box">
	                    <div class="cnotice_title">공지사항
	                    	<span><a href="notice">더보기></a></span>
	                    </div>
	                    <ul class="cuc_list" id="cuc_not_list">
	                    </ul>
	                </div>
	                <div class="right_box2">
	                    <p><em>거긴어때</em> 고객센터</p>
	                    <p>1577-1111</p>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	<%@ include file="../footer.jsp"%>
	<script src="js/cuc.js"></script>
	<script>
	$(document).ready(function(){
		
    	$.ajax({
    		url: "getNoticeList.do",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 5; i++) {
    				$("#cuc_not_list").append('<li><a href="#"><span>' 
    						+ obj[i].not_title + '</span></a><input type="hidden" value="'
    						+ obj[i].not_no + '"></li>');
    				}
    		},
    		error: function(){
    			alert("error.....");
    		}
    	});
    });
	</script>
</body>
</html>