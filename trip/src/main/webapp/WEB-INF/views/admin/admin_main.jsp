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
	            <%@include file="admin_nav.jsp"%>
	            <div class="middle_title"><em>거긴어때 관리 페이지</em>입니다.</div>
                <div class="ad_middle_content">
                	<div class="right_bottom_box">
	                    <div class="cnotice_title">상품
	                    	<span><a href="admin_prod_list">더보기></a></span>
	                    </div>
	                    <ul class="cuc_list" id="ad_prod_list">
	                    
	                    </ul>
	                </div>
                	<div class="right_bottom_box">
	                    <div class="cnotice_title">공지사항
                    		<span><a href="admin_notice">더보기></a></span>
                    	</div>
                    	<ul class="cuc_list" id="ad_not_list">
	                    
	                    </ul>
	                </div>
				</div>
                <div class="ad_middle_content">
                	<div class="right_bottom_box">
	                    <div class="cnotice_title">FAQ
                    		<span><a href="adminFAQ">더보기></a></span>
                    	</div>
                    	<ul class="cuc_list" id="ad_faq_list">
	                    	
	                    </ul>
	                </div>
                	<div class="right_bottom_box">
	                    <div class="cnotice_title">예약 문의/답변
                    		<span><a href="res_qna_admin">더보기></a></span>
                    	</div>
                    	<ul class="cuc_list" id="ad_res_qna_list">
	                    	
	                    </ul>
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
    			
    			for (i = 0; i < 5; i++) {
    				$("#ad_not_list").append('<li><a href="notice_post?not_no=' 
    						+ obj[i].not_no + '"><span>' 
    						+ obj[i].not_title + '</span></a></li>');
    				}
    		},
    		error: function(){
    			alert("error.....");
    		}
    	});
    	
    	$.ajax({
    		url: "admin_prod_list.do",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 5; i++) {
    				$("#ad_prod_list").append('<li><a href="admin_prod_detail?prod_no=' 
    						+ obj[i].prod_no + '"><span>' 
    						+ obj[i].prod_name + '</span></a></li>');
    				}
    		},
    		error: function(){
    			alert("error.....");
    		}
    	});
    	
    	$.ajax({
    		url: "getFAQList",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 5; i++) {
    				$("#ad_faq_list").append('<li><a href="adminFAQ"><span>' 
    						+ obj[i].faq_title + '</span></a></li>');
    				}
    		},
    		error: function(){
    			alert("error.....");
    		}
    	});
    	
    	$.ajax({
    		url: "getResQNAListForAdmin",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 5; i++) {
    				$("#ad_res_qna_list").append('<li><a href="res_qna_adminpost?res_qna_no=' 
    						+ obj[i].res_qna_no + '"><span>' 
    						+ obj[i].res_qna_title + '</span></a></li>');
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