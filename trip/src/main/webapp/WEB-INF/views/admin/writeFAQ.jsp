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
                <div class="main_post">
                    <div class="notice_post">
						<div class="notice_title">FAQ 작성
                        </div>
                        <div class="ad_title_area">
							<div class="ad_post_title">
								<input class="qna_subj" id="rs" type="text" placeholder="제목을 입력해 주세요.">
							</div>
							<div class="post_date">
								
							</div>
                        </div>
						<div class="post_contents">
							<textarea class="qna_cont" id="rc" placeholder="최대 2500자까지 입력가능"></textarea>
						</div>
						
						<div class="btn_area">
							<input type="button" class="l_btn" value="목록">
							<input type="button" class="s_btn" value="등록">
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script>
	$(".l_btn").click(function(){
		location.href="admin";
	})
	$(".s_btn").click(function(){

		let ft = $("#rs").val();
		let fc = $("#rc").val();
		
		$.ajax({
			url: 'writeFAQ',
			type: 'post',
			data: {
				faq_title: ft,
				faq_contents: fc
			},
			success: function() {
				alert('등록 완료');
				location.href="admin";
			}
			
		});
	})
	</script>
</body>
</html>