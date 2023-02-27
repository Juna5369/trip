<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<%@ include file="../header.jsp"%>
	<%@ include file="../nav.jsp"%>
	<section class="main">
	    <div class="box">
	        <div class="admin_box">
	            <div class="lnb">
	                <div class="lnb_title">
	                    <a href="#">관리페이지</a>
	                </div>
	                <ul>
	                    <li><a href="admin_notice">공지사항</a></li>
                        <li><a href="admin_prod_list">상품관리</a></li>
                        <li><a href="#">매출 통계</a></li>
                        <li><a href="#">문의 답변</a></li>
	                </ul>
	            </div>
			<div class="ad_main">
	            <div class="middle_title"><em>거긴어때 관리 페이지</em>입니다. 무엇을 도와드릴까요?</div>
	                <div class="middle_main">
	                <thead>
	                	<div class="middle1">
		                    <div class="main_title">공지사항
		                    	<span><a href="#">더보기></a></span>
		                    </div>
							<ul class="admin_list" id="admin_not_list">
							
							</ul>
		                </div>
		                
						<div class="middle2">
	                    	<div class="main_title">상품
	                    		<span><a href="#">더보기></a></span>
	                    	</div>
	                	</div>
	                	
						<div class="middle3">
	                    	<div class="main_title">조회/통계
	                    		<span><a href="#">더보기></a></span>
	                    	</div>
	                	</div>
					
						<div class="middle4">
	                    	<div class="main_title">문의 답변
	                    		<span><a href="#">더보기></a></span>
	                    	</div>
		                </div>
		                </thead>
					</div>
	            </div>
			</div>
		</div>
	        
	    
	</section>
	<%@ include file="../footer.jsp"%>
	<script src="js/admin.js"></script>
	<script>
	$(document).ready(function(){
		
    	$.ajax({
    		url: "getNoticeList.do",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 4; i++) {
    				$("#admin_not_list").append('<li><a href="#"><span>' 
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