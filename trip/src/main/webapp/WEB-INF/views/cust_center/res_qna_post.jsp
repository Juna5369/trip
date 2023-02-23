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
                        <li><a onclick="goQNA()">1:1 문의</a></li>
                        <li><a onclick="go_res_qna_list()">1:1 문의내역</a></li>
                        <li><a href="notice">공지사항</a></li>
                    </ul>
                </div>
                <div class="main_post">
                    <div class="notice_post">
                        <div class="notice_title">1:1문의내역
                        </div>
                        <div class="title_area">
							<div class="post_title">
								${post.res_qna_title }
							</div>
							<div class="post_date">
								${post.res_qna_date }
							</div>
                        </div>
						<div class="post_contents">
							${post.res_qna_contents }
						</div>        
						<div class="btn_area">
							<input type="button" class="l_btn" value="목록">
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script>
		$(".l_btn").click(function(){
			location.href="res_qna_list";
		})
		
		function goQNA(){
			if('${sessionScope.id }' == ""){
				location.href="login";
			}else{
				location.href="qna";
			}
		}
		
		function go_res_qna_list(){
			if('${sessionScope.id }' == ""){
				location.href="login";
			}else{
				location.href="res_qna_list";
			}
		}
	</script>
</body>
</html>