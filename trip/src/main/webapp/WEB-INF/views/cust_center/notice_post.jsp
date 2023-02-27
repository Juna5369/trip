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
                <%@include file="cust_nav.jsp"%>
                <div class="main_post">
                    <div class="notice_post">
                        <div class="notice_title">공지사항
                        </div>
                        <div class="title_area">
							<div class="post_title">
								${post.not_title }
							</div>
							<div class="post_date">
								${post.not_date }
							</div>
                        </div>
						<div class="post_contents">
							${post.not_contents }
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
			location.href="notice";
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