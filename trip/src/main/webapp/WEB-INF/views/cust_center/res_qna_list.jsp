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
                        <li><a href="res_qna_list">1:1 문의내역</a></li>
                        <li><a href="notice">공지사항</a></li>
                    </ul>
                </div>
                <div class="main_notice">
                    <div class="notice_board">
                        <div class="notice_title">1:1 문의내역
                        </div>
                        <table class="notice_tbl">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>등록일</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
                        </table>
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
    		url: "getQNAList",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 
    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 10; i++) {
    				$(".notice_tbl > tbody").append('<tr><td>' 
    						+ obj[i].res_qna_no + '</td><td>' 
    						+ obj[i].res_qna_title + '</td><td>'
    						+ obj[i].res_qna_date + '</td></tr>');
    				}

    		},
    		error: function(){
    			alert("error.....");
    		}
    	});
    });
	
	$(".notice_tbl > tbody").on('click', function(e){
		if(e.target.parentNode.tagName == 'TR' && e.target.parentNode.firstChild.id != 'page'){
			location.href="res_qna_post?res_qna_no="+e.target.parentElement.firstChild.innerText;
		}
	});
	</script>
</body>
</html>