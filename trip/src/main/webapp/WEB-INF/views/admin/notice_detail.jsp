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
</body>
</html>