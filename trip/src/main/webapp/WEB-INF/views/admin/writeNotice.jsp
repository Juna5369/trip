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
                        <li><a href="#">요소</a></li>
                        <li><a href="#">요소</a></li>
                        <li><a href="#">요소</a></li>
                        <li><a href="#">요소</a></li>
                    </ul>
                </div>
                <div class="main_post">
                    <div class="notice_post">
						<div class="notice_title">공지사항 작성
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
		
		let nt = $("#rs").val();
		let nc = $("#rc").val();
		
		$.ajax({
			url: 'writeNotice',
			type: 'post',
			data: {
				not_title: nt,
				not_contents: nc
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