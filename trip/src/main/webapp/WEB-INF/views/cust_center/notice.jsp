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
                <div class="main_notice">
                    <div class="notice_board">
                        <div class="notice_title">공지사항
                            <div class="notice_search">
                                <input type="button" class="notice_search_btn" value="검색">
                                <input type="text" class="notice_search_input" placeholder="검색어를 입력해주세요.">
                            </div>
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
    		url: "getNoticeList.do",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 10; i++) {
    				$(".notice_tbl > tbody").append('<tr><td>' 
    						+ obj[i].not_no + '</td><td>' 
    						+ obj[i].not_title + '</td><td>'
    						+ obj[i].not_date + '</td></tr>');
    				}
    			$(".notice_tbl > tbody").append('<tr><td id="page" colspan="3"></td></tr>');
    			if(obj.length > 10){
    				for(let j = 1; j < obj.length/10+1; j++){
    					$("#page").append("<span>"+ j + "</span");
    				}
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